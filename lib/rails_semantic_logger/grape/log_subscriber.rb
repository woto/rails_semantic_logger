module RailsSemanticLogger
  module Grape
    class LogSubscriber < ActiveSupport::LogSubscriber
      def logger
        logger = SemanticLogger['Grape']
      end

      def endpoint_render(event)
        # self.class.logger.info('a' => 'endpoint_render')
      end

      def endpoint_run_validators(event)
        # logger.info('a' => 'endpoint_run_validators')
        logger.info(params: event.payload[:request].params,
                    path: event.payload[:request].path,
                    method: event.payload[:request].request_method)
      end

      def endpoint_run(event)
        # logger.info('a' => 'endpoint_run')
      end

      def endpoint_run_filters(event)
        # logger.info('a' => 'endpoint_run_filters')
      end

      def format_response(event)
        # logger.debug('a' => 'format_response')
      end
    end
  end
end
