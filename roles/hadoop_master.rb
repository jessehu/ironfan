name 'hadoop_master'
description 'runs a namenode, secondarynamenode, jobtracker and webfront in fully-distributed mode. There should be exactly one of these per cluster.'

run_list %w[
  hadoop_cluster::ec2_conf
  hadoop_cluster::namenode
  hadoop_cluster::jobtracker
  hadoop_cluster::hadoop_webfront
  maintain_hadoop_cluster::make_standard_hdfs_dirs
  maintain_hadoop_cluster::ensure_hadoop_owns_hadoop_dirs
  maintain_hadoop_cluster::format_namenode_if_necessary
]

default_attributes({
  })
