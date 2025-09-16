# Outline of the Change Data Capture demo
_Based on this repository: [Knative Serverless Example - Workshop](https://github.com/maarten-vandeperre/knative-serverless-example-workshop/tree/main)_

## Setup

### Operators
Install the following operators:
* The OpenShift Dev Spaces operator
* The Streams for Apache Kafka operator
* The OpenShift Serverless operator

### Prepare environment
_This step is mainly described [over here](https://github.com/maarten-vandeperre/knative-serverless-example-workshop/blob/main/workshop/wrap_up_operator_config.MD)_.

Make sure that:
* Namespace demo-project is created.
* Dev spaces are created.
* Dev spaces environment is activated for: https://github.com/maarten-vandeperre/knative-serverless-example-workshop
  * The root domain is changed
* The version of Kafka Connect (in the first script) is matching your Kafka version.

### Run the demo
_This step is mainly described [over here](https://github.com/maarten-vandeperre/knative-serverless-example-workshop/blob/main/workshop/decompose_the_monolith.MD)_.

## Extra info
Another CDC-demo can be found [over here](https://github.com/maarten-vandeperre/cdc-based-integration-example/tree/main).



