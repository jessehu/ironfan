name        'mountable_volumes'
description 'mounts attached volumes as described by node attributes'

run_list(*[
    'aws',
    'xfs',
    # 'mountable_volumes::attach',
    'mountable_volumes::mount',
  ])