pid_file = '/opt/errbit/shared/pids/unicorn.pid'

default['errbit']['user']         = 'errbit'
default['errbit']['group']        = 'errbit'
default['errbit']['ruby_version'] = '2.2.2'
default['errbit']['port']         = '3000'
default['errbit']['revision']     = 'master'
default['errbit']['pid_file']     = pid_file

default['errbit']['shallow_clone'] = false

default['errbit']['environment'] = {
  'PORT'                              => default['errbit']['port'],
  'RAILS_ENV'                         => 'production',
  'UNICORN_PID'                       => pid_file,

  # overriding errbit/.env.default
  'ERRBIT_HOST'                       => 'errbit.example.com',
  'ERRBIT_PROTOCOL'                   => 'http',
  'ERRBIT_ENFORCE_SSL'                => 'false',
  'CONFIRM_RESOLVE_ERR'               => 'true',
  'ERRBIT_CONFIRM_ERR_ACTIONS'        => 'true',
  'ERRBIT_USER_HAS_USERNAME'          => 'false',
  'ERRBIT_USE_GRAVATAR'               => 'true',
  'ERRBIT_GRAVATAR_DEFAULT'           => 'identicon',
  'ALLOW_COMMENTS_WITH_ISSUE_TRACKER' => 'true',
  'SERVE_STATIC_ASSETS'               => 'true',
  'SECRET_KEY_BASE'                   => 'f258ed69266dc8ad0ca79363c3d2f945c388a9c5920fc9a1ae99a98fbb619f135001c6434849b625884a9405a60cd3d50fc3e3b07ecd38cbed7406a4fccdb59c',
  'ERRBIT_EMAIL_FROM'                 => 'errbit@example.com',
  'ERRBIT_EMAIL_AT_NOTICES'           => '[0]',  # never
  'ERRBIT_PER_APP_EMAIL_AT_NOTICES'   => 'false',
  'ERRBIT_NOTIFY_AT_NOTICES'          => '[1,10,100]',
  'ERRBIT_PER_APP_NOTIFY_AT_NOTICES'  => 'false',
  'MONGO_URL'                         => 'mongodb://localhost',
  'GITHUB_URL'                        => 'https://github.com',
  'GITHUB_AUTHENTICATION'             => 'true',
  'GITHUB_ACCESS_SCOPE'               => '[repo]',
  'DEVISE_MODULES'                    => '[database_authenticatable,recoverable,rememberable,trackable,validatable,omniauthable]',
#  'GITHUB_CLIENT_ID'                  => '',
#  'GITHUB_SECRET'                     => '',
}
