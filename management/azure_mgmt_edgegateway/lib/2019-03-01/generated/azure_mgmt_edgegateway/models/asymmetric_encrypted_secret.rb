# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EdgeGateway::Mgmt::V2019_03_01
  module Models
    #
    # Represent the secrets intended for encryption with asymmetric key pair.
    #
    class AsymmetricEncryptedSecret

      include MsRestAzure

      # @return [String] The value of the secret.
      attr_accessor :value

      # @return [String] Thumbprint certificate used to encrypt \"Value\". If
      # the value is unencrypted, it will be null.
      attr_accessor :encryption_cert_thumbprint

      # @return [EncryptionAlgorithm] The algorithm used to encrypt "Value".
      # Possible values include: 'None', 'AES256', 'RSAES_PKCS1_v_1_5'
      attr_accessor :encryption_algorithm


      #
      # Mapper for AsymmetricEncryptedSecret class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AsymmetricEncryptedSecret',
          type: {
            name: 'Composite',
            class_name: 'AsymmetricEncryptedSecret',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              encryption_cert_thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptionCertThumbprint',
                type: {
                  name: 'String'
                }
              },
              encryption_algorithm: {
                client_side_validation: true,
                required: true,
                serialized_name: 'encryptionAlgorithm',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
