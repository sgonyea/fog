module Fog
  module Compute
    class Brightbox
      class Real
        # Remove a number of servers from the server group.
        #
        # @param [String] identifier Unique reference to identify the resource
        # @param [Hash] options
        # @option options [Array<Hash>] :servers Array of Hashes containing {"server" => server_id} for each server
        #
        # @return [Hash, nil] The JSON response parsed to a Hash or nil if no options passed
        #
        # @see https://api.gb1.brightbox.com/1.0/#server_group_remove_servers_server_group
        #
        # @example
        #    Compute[:brightbox].remove_servers_server_group "grp-12345", :servers => [{"server" => "srv-abcde"}, {"server" => "srv-fghij"}]
        #
        def remove_servers_server_group(identifier, options)
          return nil if identifier.nil? || identifier == ""
          request("post", "/1.0/server_groups/#{identifier}/remove_servers", [202], options)
        end

      end
    end
  end
end
