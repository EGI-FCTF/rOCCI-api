##############################################################################
#  Copyright 2011 Service Computing group, TU Dortmund
#  
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#  
#      http://www.apache.org/licenses/LICENSE-2.0
#  
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
##############################################################################

##############################################################################
# Description: Dummy Backend
# Author(s): Hayati Bice, Florian Feldhaus, Piotr Kasprzak
##############################################################################

module OCCI
  module Backend
    class DummyBackend
      
      def initialize()
        @computeObjects = []
        @networkObjects = []
        @storageObjects = []
      end     
      
      def create_compute_instance(computeObject)
        @computeObjects << computeObject
      end
      
      def delete_compute_instance(computeObject)
        @computeObjects.delete(computeObject)
      end
      
      def create_network_instance(networkObject)
        @networkObjects << networkObject
      end
      
      def delete_network_instance(networkObject)
        @networkObjects.delete(networkObject)
      end
      
      def create_storage_instance(storageObject)
        @storageObjects << storageObject
      end
      
      def delete_storage_instance(storageObject)
        @storageObjects.delete(storageObject)
      end
      
      def get_all_vnet_ids
        return []
      end
      
      def get_all_image_ids
        return []
      end
      
      def print_configuration()
      end
      
    end
  end  
end