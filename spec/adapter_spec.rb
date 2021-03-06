require 'spec_helper'

require 'dm-core/spec/shared/adapter_spec'
require 'dm-do-adapter/spec/shared_spec'

require 'dm-migrations'
require 'dm-sqlserver-adapter/spec/setup'

ENV['ADAPTER']          = 'sqlserver'
ENV['ADAPTER_SUPPORTS'] = 'all'

describe 'DataMapper::Adapters::SqlserverAdapter' do

  let(:adapter)    { DataMapper::Spec.adapter }
  let(:repository) { DataMapper.repository(adapter.name) }

  it_should_behave_like 'An Adapter'
  it_should_behave_like 'A DataObjects Adapter'

end
