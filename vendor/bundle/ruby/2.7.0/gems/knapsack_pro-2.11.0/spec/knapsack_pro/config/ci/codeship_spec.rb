describe KnapsackPro::Config::CI::Codeship do
  let(:env) { {} }

  before do
    stub_const('ENV', env)
  end

  it { should be_kind_of KnapsackPro::Config::CI::Base }

  describe '#node_total' do
    subject { described_class.new.node_total }

    it { should be nil }
  end

  describe '#node_index' do
    subject { described_class.new.node_index }

    it { should be nil }
  end

  describe '#node_build_id' do
    subject { described_class.new.node_build_id }

    context 'when environment exists' do
      let(:env) { { 'CI_BUILD_NUMBER' => 2013 } }
      it { should eql 2013 }
    end

    context "when environment doesn't exist" do
      it { should be nil }
    end
  end

  describe '#commit_hash' do
    subject { described_class.new.commit_hash }

    context 'when environment exists' do
      let(:env) { { 'CI_COMMIT_ID' => 'a22aec3ee5d334fd658da35646b42bc5' } }
      it { should eql 'a22aec3ee5d334fd658da35646b42bc5' }
    end

    context "when environment doesn't exist" do
      it { should be nil }
    end
  end

  describe '#branch' do
    subject { described_class.new.branch }

    context 'when environment exists' do
      let(:env) { { 'CI_BRANCH' => 'master' } }
      it { should eql 'master' }
    end

    context "when environment doesn't exist" do
      it { should be nil }
    end
  end

  describe '#project_dir' do
    subject { described_class.new.project_dir }

    it { should be nil }
  end
end
