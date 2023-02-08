library(TensorFlow) 
# Create a multi-layer perceptron model 
model - keras_model_sequential() 
model %% 
  layer_dense(units = 10, activation = 'relu', input_shape = c(100)) %% 
  layer_dense(units = 5, activation = 'relu') %% 
  layer_dense(units = 1, activation = 'sigmoid') 
# Compile the model 
model %% compile( 
  optimizer = 'adam', 
  loss = 'binary_crossentropy', 
  metrics = c('accuracy')
) 
# Fit the model 
model %% fit( 
  x = x_train, 
  y = y_train, 
  epochs = 10, 
  batch_size = 32 
)