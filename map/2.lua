return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 80,
  height = 23,
  tilewidth = 8,
  tileheight = 8,
  nextlayerid = 4,
  nextobjectid = 33,
  properties = {},
  tilesets = {
    {
      name = "tiles",
      firstgid = 1,
      class = "",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 18,
      image = "../assets/tiles.png",
      imagewidth = 144,
      imageheight = 96,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      wangsets = {},
      tilecount = 216,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
      height = 23,
      id = 1,
      name = "ground",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 68, 140, 140, 140, 140, 68, 68, 68, 140, 68, 68, 68, 140, 140, 140, 140, 140, 140, 140, 140, 140, 140, 140, 140, 140, 140, 140, 140, 68, 68, 68, 68, 140, 140, 68, 140, 68, 68, 140, 68, 68, 68, 68, 68, 68, 140, 140, 140, 140, 140, 68, 68, 68, 68, 140, 140, 68, 68, 140, 68, 140, 68, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 51, 91, 0, 0, 0, 0, 92, 94, 92, 92, 0, 0, 0, 92, 94, 92, 94, 92, 93, 92, 92, 92, 0, 93, 0, 0, 92, 92, 0, 93, 0, 93, 0, 0, 0, 92, 92, 94, 94, 92, 0, 0, 94, 94, 0, 0, 0, 92, 92, 92, 92, 92, 92, 92, 92, 0, 0, 92, 0, 0, 0, 92, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 0, 0, 0, 0, 27, 28, 29, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 0, 0, 0, 0, 45, 46, 47, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 0, 0, 0, 0, 63, 64, 65, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 123, 0, 0, 128, 128, 128, 128, 128, 128, 128, 128, 0, 0, 0, 0, 0, 0, 130, 130, 130, 130, 130, 0, 0, 129, 129, 129, 129, 129, 129, 129, 129, 129, 0, 0, 0, 129, 129, 129, 0, 0, 0, 0, 0, 0, 0, 129, 129, 129, 129, 129, 0, 0, 0, 0, 0, 0, 129, 129, 129, 129, 129, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 32, 32, 32, 32, 32, 32, 32, 32, 104, 104, 104, 104, 104, 104, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 104, 104, 32, 32, 104, 104, 104, 104, 104, 104, 104, 104, 32, 32, 32, 104, 104, 104, 32, 32, 104, 104, 104, 32, 32, 104, 104, 104, 104, 104, 104, 104, 32, 32, 32, 32, 32, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "solid",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["collidable"] = true
      },
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56.1033,
          y = 160.211,
          width = 503.805,
          height = 7.68779,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 47.6476,
          y = 24.1561,
          width = 8.03805,
          height = 135.688,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 559.981,
          y = 24.156,
          width = 8.03805,
          height = 135.688,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56.4308,
          y = 16.1561,
          width = 503.805,
          height = 7.68779,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96.1168,
          y = 103.914,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 143.978,
          y = 64.3691,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 183.693,
          y = 104.423,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 231.894,
          y = 64.3691,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 264.141,
          y = 103.405,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320.149,
          y = 64.0297,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360.543,
          y = 103.745,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 408.065,
          y = 56.2225,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448.119,
          y = 104.423,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 496.32,
          y = 55.5436,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 520.081,
          y = 104.084,
          width = 23.6524,
          height = 24.0112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "entity",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 18,
          name = "flower",
          type = "flower",
          shape = "ellipse",
          x = 104.209,
          y = 95.0441,
          width = 7.12831,
          height = 7.46775,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "flower",
          type = "flower",
          shape = "ellipse",
          x = 191.276,
          y = 94.7047,
          width = 7.12831,
          height = 7.46775,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "flower",
          type = "flower",
          shape = "ellipse",
          x = 271.385,
          y = 94.7047,
          width = 7.12831,
          height = 7.46775,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "stone",
          type = "stone",
          shape = "rectangle",
          x = 151.392,
          y = 53.9715,
          width = 8.14664,
          height = 7.46775,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "stone",
          type = "stone",
          shape = "rectangle",
          x = 239.308,
          y = 54.9898,
          width = 8.14664,
          height = 7.46775,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "spikes",
          type = "spike",
          shape = "rectangle",
          x = 150.713,
          y = 148.337,
          width = 11.2016,
          height = 10.1833,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "spikes",
          type = "spike",
          shape = "rectangle",
          x = 164.46,
          y = 148.676,
          width = 11.2016,
          height = 10.1833,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "spikes",
          type = "spike",
          shape = "rectangle",
          x = 177.359,
          y = 148.676,
          width = 11.2016,
          height = 10.1833,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "spikes",
          type = "spike",
          shape = "rectangle",
          x = 192.295,
          y = 148.337,
          width = 11.2016,
          height = 10.1833,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
