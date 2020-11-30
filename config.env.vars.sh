#!/bin/zsh
# Set Globals here that are sourced in scripts

# container count
INSTANCE_COUNT=1
INSTANCE_NAME="Bloki_"
INSTANCE_NAMES=()

# container ec2 type
# https://aws.amazon.com/ec2/instance-types/
# Instance	vCPU	Mem (GiB)	Storage	Network Performance (Gbps)
# a1.medium	1	2	EBS-Only    Up to 10
# a1.large	2	4	EBS-Only	Up to 10
# a1.xlarge	4	8	EBS-Only	Up to 10
# a1.2xlarge	8	16	EBS-Only	Up to 10
# a1.4xlarge	16	32	EBS-Only	Up to 10
# a1.metal	16*	32	EBS-Only	Up to 10

# t4g.nano	2	0.5	5%	6	Up to 5	Up to 2,085
# t4g.micro	2	1	10%	12	Up to 5	Up to 2,085
# t4g.small	2	2	20%	24	Up to 5	Up to 2,085
# t4g.medium	2	4	20%	24	Up to 5	Up to 2,085
# t4g.large	2	8	30%	36	Up to 5	Up to 2,780
# t4g.xlarge	4	16	40%	96	Up to 5	Up to 2,780
# t4g.2xlarge	8	32	40%	192	Up to 5	Up to 2,780

# t3.nano	    2   6     0.5	EBS-Only	Up to 5
# t3.micro	2   12    1	    EBS-Only    Up to 5
# t3.small	2   24    2	    EBS-Only    Up to 5
# t3.medium	2	24    4     EBS-Only    Up to 5
# t3.large	2	36    8     EBS-Only	Up to 5
# t3.xlarge	4	96    16	EBS-Only	Up to 5
# t3.2xlarge	8	192   32	EBS-Only	Up to 5

INSTANCE_TYPE="t3.large"

for x in {1..$INSTANCE_COUNT}; do $INSTANCE_NAMES+=($INSTANCE_NAME+$(uuidgen)); done
