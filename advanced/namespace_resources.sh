#!/bin/bash

namespace="my_namespace_here"

echo "Namespace: $namespace"
echo "-------------------------"

# Get all pods in the namespace
echo "Pods:"
kubectl get pods -n $namespace

echo ""

# Get all deployments in the namespace
echo "Deployments:"
kubectl get deployments -n $namespace

echo ""

# Get all statefulsets in the namespace
echo "Statefulsets:"
kubectl get statefulsets -n $namespace

echo ""

# Get all cronjobs in the namespace
echo "CronJobs:"
kubectl get cronjobs -n $namespace

echo ""

# Get all ingress resources in the namespace
echo "Ingress:"
kubectl get ingress -n $namespace

echo ""
