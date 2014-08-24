# neo4j-cookbook

Install and manage neo4j Server

## Supported Platforms

* Ubuntu

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['neo4j']['address']</tt></td>
    <td>IP</td>
    <td>IP to listen to</td>
    <td><tt>0.0.0.0</tt></td>
  </tr>
</table>

## Usage

### neo4j::default

Include `neo4j` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[neo4j::default]"
  ]
}
```

## License and Authors

Author:: Andrei Burd (<bandrei@yotpo.com>)
