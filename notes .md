### Models
--no-test-framework
- [X] Apartments: has_many leases, has_many tenants through leases
- [X] Lease: belongs_to an apartment, belongs_to a tenant
- [X] Tenant: has_many leases, has_many apartments through leases

### Validations
- [X] Apartment: must have number
- [X] Tenant: must have name, age must be greater than or equal to 18
- [X] Lease: must have apartment_id and tenant_id

### Routes
Apartments:
- [X] GET to /apartments; apartment#index
- [X] GET to /apartments/:id; apartment#show
- [X] POST to /apartments; apartment#create
- [X] PATCH to /apartments/:id; apartment#update
- [X] DELETE to /apartments/:id; apartment#destroy

Tenants:
- [X] GET to /tenants; tenant#index
- [X] GET to /tenants/:id; tenant#show
- [X] POST to /tenants; tenant#create
- [X] PATCH to /tenants/:id; tenant#update
- [X] DELETE to /tenants/:id; tenant#destroy

Lease
- [X] POST to /leases; lease#create
- [X] DELETE to /leases/:id; lease#destroy


