module KnapsackPro
  module Config
    module CI
      class Heroku < Base
        def node_total
          ENV['CI_NODE_TOTAL']
        end

        def node_index
          ENV['CI_NODE_INDEX']
        end

        def node_build_id
          ENV['HEROKU_TEST_RUN_ID']
        end

        def commit_hash
          ENV['HEROKU_TEST_RUN_COMMIT_VERSION']
        end

        def branch
          ENV['HEROKU_TEST_RUN_BRANCH']
        end

        def project_dir
          '/app' if node_build_id
        end
      end
    end
  end
end
