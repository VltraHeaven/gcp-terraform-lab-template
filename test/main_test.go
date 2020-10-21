package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	// May use assert module for future tests
	// "github.com/stretchr/testify/assert"
)

func TestTerraformValidate(t *testing.T) {
	// Setting the path to the terraform root module location
	terraformOptions := &terraform.Options{
		TerraformDir: "../",
	}

	// Post-testing cleanup with 'terraform destroy'
	defer terraform.Destroy(t, terraformOptions)

	// Run 'terraform init' and 'terraform apply'. Fail the test if there are any errors.
	terraform.InitAndApplyAndIdempotent(t, terraformOptions)
}
