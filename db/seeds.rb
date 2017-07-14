# ale = Category.create(name: "Ales")
# lager = Category.create(name: "Lagers")
# stout = Category.create(name: "Stouts & Porters")
# malt = Category.create(name: "Malts")

# Style.create(name: "Amber", description: "A very versatile beer, Amber beers are full bodied malt aromas with hints of caramel, these beers could be either lager or ale.", category: lager)
# Style.create(name: "Blonde", description: "Blonde ales are very pale in colour and tend to be clear, crisp, and dry, with low-to-medium bitterness and aroma from hops and some sweetness from malt.", category: ale)
# Style.create(name: "Brown", description: "Dark amber or brown in colour, brown ale have evidence of caramel and chocolate flavours and may have a slight citrus accent or be strong, malty or nutty, depending on the area of brewing.", category: ale)
# Style.create(name: "Cream", description: "A very mild, sweetish, golden style of ale.", category: ale)
# Style.create(name: "Dark", description: "Dark ale is a British type beer, combining hops, yeast and a blend of malts. It's a medium chestnut brown colour, with a delicate fruity smell and robust, malty character.", category: ale)
# Style.create(name: "Fruit", description: "Most fruit beers are ales however, they typically do not carry an ale character. In order to allow for the fruit flavor to come through nicely, the malt’s flavor is not dominant and there is a low bitterness level to the beer.", category: ale)
# Style.create(name: "Golden", description: "First developed in the UK, Golden ales are straw coloured with a slight hint of citrus and vanilla. The beer can sometimes contain spicier flavours.", category: ale)
# Style.create(name: "Honey", description: "A full-bodied beer with a creamy texture and copper colour. Honey beers are slightly sweet with hints of caramel.", category: malt)
# Style.create(name: "India Pale Ale", description: "A hoppier version of pale ale. Originally brewed in England with extra hops to survive the journey to British troops stationed in India.", category: ale)
# Style.create(name: "Light", description: "Extremely light in colour and mild in flavour. Light beer has fewer calories and/or lower alcohol content.", category: lager)
# Style.create(name: "Lime", description: "Typically light in flavour with a refreshing lime taste. The intensity of the lime can differ from very subtle to strong.", category: lager)
# Style.create(name: "Pale", description: "Pale ale has a fruity, copper-coloured styler. It originiated from England. Pale ales are robust beers that can be enjoyed with strongly spiced foods.", category: ale)
# Style.create(name: "Pilsner", description: "Made with neutral and hard water. Tend to be golden in colour with a dry, crisp, and somewhat bitter flavour. Pilsner stands out from other lagers due to its more distinctive hop taste.", category: lager)
# Style.create(name: "Red", description: "Red ales can either be red or light brown in colour. They are moderate to heavy in flavour and contain hints of caramel that is offset by the predominant hop characteristic of the beer.", category: ale)
# Style.create(name: "Strong", description: "This is a broad grouping that can describe any beer over 7\% ABV. Strong beers are typically dark in colour, some are almost black. Different styles can include old ales, double IPAs, and barleywines.", category: stout)
# Style.create(name: "Wheat", description: "Light and easy to drink with very little aftertaste. Wheat provides a soft character to beer and is sometimes hazy or cloudy with a touch of spice notes.", category: stout)
require_relative '../app/models/brewery_db_adapter'

brewery_db = BreweryDBAdapter.new(ENV['BREWERY_DB_ACCESS_TOKEN'])

brewery_db.categories
brewery_db.styles
