# ExpediaRapid::GetPropertyContent200ResponseValueImagesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hero_image** | **Boolean** | Whether this image is a hero image or not. | [optional] |
| **category** | **Float** | The category of the image. | [optional] |
| **caption** | **String** | The image caption. | [optional] |
| **links** | [**Hash&lt;String, GetPropertyContent200ResponseValueAddressLocalizedLinksValue&gt;**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) | Contains urls for all of the image sizes available. Sizes may include: 70 px, 200px, 350 px, and 1,000 px | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueImagesInner.new(
  hero_image: null,
  category: null,
  caption: null,
  links: null
)
```

