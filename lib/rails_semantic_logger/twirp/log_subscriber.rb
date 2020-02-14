module RailsSemanticLogger
  module Twirp
    class LogSubscriber < ActiveSupport::LogSubscriber

      def logger
        SemanticLogger['Twirp']
      end

      def route_request(event)
        logger.info(:rpc_method => event.payload[:env][:rpc_method], :input => event.payload[:env][:input])
        # logger.info('a' => 'route_request')
      end

      def hook(event)
        # logger.info(:rpc_method => event.payload[:env][:rpc_method], :input => event.payload[:env][:input])
        # logger.info('a' => 'hook')
      end

      def handler(event)
        # logger.info(:rpc_method => event.payload[:env][:rpc_method], :input => event.payload[:env][:input])
        # logger.info('a' => 'handler')
      end
    end
  end
end
