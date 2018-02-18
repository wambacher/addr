<!DOCTYPE html>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
<!--meta http-equiv="Pragma" content="no-cache"--> 
<meta name="viewport" content="width=auto, user-scalable=yes, initial-scale=1, maximum-scale = 1"/>
<title>OSM ADDR Map 1.0.0</title>
<!-- V 1.0.0    abgeleitet aus emergency/idx033 
-->
<base target="_top" />

<link rel='stylesheet' href='https://wambachers-osm.website/webcommon/js/leaflet/leaflet-1.2.0/leaflet.css' />
<link rel='stylesheet' href='https://wambachers-osm.website/webcommon/css/leaflet/L.Control.ZoomDisplay.css' />
<link rel='stylesheet' href='https://wambachers-osm.website/webcommon/css/leaflet/L.Control.MousePosition.css' />
<link rel='stylesheet' href='https://wambachers-osm.website/webcommon/css/leaflet/L.Control.Loading.css' />
<link rel='stylesheet' href='https://wambachers-osm.website/webcommon/css/leaflet/Leaflet.EditInOSM.css' />
<link rel='StyleSheet' href='https://wambachers-osm.website/webcommon/js/leaflet/plugins/leaflet-messagebox/leaflet-messagebox.css'/>
<link rel="StyleSheet" href='https://wambachers-osm.website/webcommon/js/leaflet/plugins/Leaflet.Dialog/Leaflet.Dialog.css'/>
<link rel='StyleSheet' href='https://wambachers-osm.website/webcommon/js/leaflet/plugins/Leaflet.markercluster-1.0.6/dist/MarkerCluster.Default.css'/>
<link rel='StyleSheet' href='https://wambachers-osm.website/webcommon/js/leaflet/plugins/Leaflet.markercluster-1.0.6/dist/MarkerCluster.css'/>
<link rel='StyleSheet' href='https://wambachers-osm.website/webcommon/js/leaflet/plugins/leaflet-control-geocoder-1.5.4/dist/Control.Geocoder.css'/>
<link rel='StyleSheet' href='https://wambachers-osm.website/webcommon/js/leaflet/plugins/leaflet-locatecontrol/dist/L.Control.Locate.min.css'/>
<!--link rel='StyleSheet' href='https://wambachers-osm.website/webcommon/js/fonts/font-awesome/4.5.0/css/font-awesome.min.css'/-->
<link rel="stylesheet" href='https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css'/>
<link rel="stylesheet" href='https://wambachers-osm.website/webcommon/js/leaflet/plugins/Leaflet.EasyButton/src/easy-button.css'/>

<link rel='StyleSheet' href='css/map001.css'/>


<!--[if IE 6]>
   <link href="https://wambachers-osm.website/webcommon/css/ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script>
   var myBase        = "addr";
   var myVersion     = "1";
   var mySubversion  = "0"; 
   var mySerial      = "0";
   var FEATURE_COUNT =  5;   
   var myName        = myBase+"-"+myVersion+"."+mySubversion+"."+mySerial;
   var database      = "planet3";
   var loading       = 0;
   var host          = window.location.hostname;
   var protocol      = window.location.protocol;
   var vlag          = -1;
   var legendIsOpen  = false;
   var parser        = document.createElement('a');
   var px            = 256;


   if (typeof console === "undefined" || typeof console.log === "undefined") {
     console = {};
     console.log = function() {};
   }
</script>

<script src='https://wambachers-osm.website/webcommon/js/leaflet/leaflet-1.2.0/leaflet-src.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/L.Control.ZoomDisplay.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/L.Control.MousePosition.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/L.Control.ActiveLayers.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/L.Control.Loading.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/Leaflet.EditInOSM.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/plugins/leaflet-messagebox/leaflet-messagebox.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/plugins/Leaflet.Dialog/Leaflet.Dialog.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/plugins/Leaflet.markercluster-1.0.6/dist/leaflet.markercluster.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/jquery/r3/jquery-3.2.1.min.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/jquery/r3/jquery-migrate-3.0.0.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/plugins/L.TileLayer.Grayscale/L.TileLayer.Grayscale.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/shamov/leaflet-plugins-master/control/Permalink.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/shamov/leaflet-plugins-master/control/Permalink.Marker.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/shamov/leaflet-plugins-master/control/Permalink.Layer.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/shamov/leaflet-plugins-master/control/Permalink.Overlay.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/plugins/leaflet-control-geocoder-1.5.4/dist/Control.Geocoder.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/plugins/leaflet-locatecontrol/dist/L.Control.Locate.min.js'></script>
<script src='https://wambachers-osm.website/webcommon/js/leaflet/plugins/Leaflet.EasyButton/src/easy-button.js'></script>

<style>
      html, body, #map {
         height:100%;
         width:100%;
         padding:0px;
         margin:0px;
      } 

#   .leaflet-tile { border: solid blue 1px; }

   </style>

<script language="javascript">
   function init() {

      function merge_options(obj1,obj2){
        var obj3 = {};
        for (var attrname in obj1) { 
           obj3[attrname] = obj1[attrname];
        }
        for (var attrname in obj2) { 
           obj3[attrname] = obj2[attrname];
        }
        return obj3;
      };

      console.log(myName, "### Starting "+myBase+" Map. host="+host+" version="+myVersion+"."+mySubversion+" ###");
      
// test referer - wenn geht 
      var wlHref = window.location.href;
      
      var uuid = guid();
      
      var isMobile = L.Browser.mobile || false;
      console.log(myName,"isMobile=", isMobile);
      
      console.log(myName, "### href=",wlHref);

      var mapbox_token = "pk.eyJ1Ijoid2FtYmFjaGVyIiwiYSI6ImY3Njk2YjY0MDgyNDJhZjNlMTdmYmVjZWYxZWE3MDNlIn0.1GZqaAa_KtToKDI8SFIoRw";

      var osmTiles     = "Imagery &copy; <a href='https://openstreetmap.org'>OpenStreetMap</a>";   
          osmData      = "Map data &copy; <a href='https://openstreetmap.org'>OpenStreetMap</a> contributors " +
                          "<a href='https://opendatacommons.org/licenses/odbl/1.0/'>ODbL</a>";
          osmOrgUrl    = "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
          osmDeUrl     = "https://{s}.tile.openstreetmap.de/tiles/osmde/{z}/{x}/{y}.png";
         

      var mbAttr       = "Imagery &copy; <a href='https://mapbox.com'>Mapbox</a>";
      var KWFAttr      = "KWF Data 2.3&nbsp;&copy;&nbsp;<a href='http://www.rettungspunkte-forst.de/'>KWF&nbsp;</a>&nbsp;" +
                         "<a href='http://creativecommons.org/licenses/by-nd/3.0/de/legalcode'>CC-BY-ND</a>";
      var mbUrl        = "https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token="+ mapbox_token;
      var msUrl        = "http://localhost:8083/cgi-bin/mapserv?map=/osm/mapserver/myMapserver.map";
      var qgisUrl      = "http://localhost:8084/cgi-bin/emergency/qgis_mapserv.fcgi";
      var geosWMS      = "https://wambachers-osm.website/geoserver/wms";
      var geosWFS      = "https://wambachers-osm.website/geoserver/wfs";
      var geosOWS      = "https://wambachers-osm.website/geoserver/ows";
      var wmflabsUrl   = "http://{s}.tiles.wmflabs.org/hillshading/{z}/{x}/{y}.png";
      var wmflabsGray  = "http://{s}.tiles.wmflabs.org/bw-mapnik/{z}/{x}/{y}.png";
      var baseUrl      = "https://wambachers-osm.website"; 

      var globalOverlayOptions = {
         type:                  "WMS",
         version:               "1.1.1",
         format:                "image/png8",
         attribution:           osmData,
         transparent:           true,
         buffer:                20,
         timeout:               300,
         exceptions:            "application/vnd.ogc.se_inimage",
         maxZoom:               20,
         minZoom:               11,
         active:                false,
         showCoverageOnHover:   true
      };

//    BASE LAYERS

      var L_osmOrg     = L.tileLayer(osmOrgUrl, {
                            name:"Openstreetmap.org", attribution: osmTiles, maxNativeZoom:19, maxZoom:20 });
      var L_osmOrgGray = L.tileLayer.grayscale(osmOrgUrl, {
                            name:"OpenStreetMap.org Grayscale", attribution: osmTiles, maxNativeZoom:19, maxZoom:20 });  
      var L_osmDe      = L.tileLayer(osmDeUrl, {
                            name:"OpenStreetMap.de", attribution: osmTiles, maxNativeZoom:19, maxZoom:20 });
      var L_streets    = L.tileLayer(mbUrl, {
                            name:"Mapbox Streets",  id:"mapbox.streets", attribution: mbAttr, maxZoom:20});
      var L_grayscale  = L.tileLayer(mbUrl, {
                            name:"Mapbox Grayscale", id:"mapbox.light", attribution: mbAttr, maxZoom:20});
//    var L_terrain_v2 = L.tileLayer(mbUrl, {
//                          name:"Mapbox Terrain"  , id:"mapbox.terrain-v2", attribution: mbAttr});
      var L_satellite  = L.tileLayer(mbUrl, {
                            name:"Mapbox Satellite", id:"mapbox.satellite", attribution: mbAttr, maxZoom:20});
            
      var baseLayers = {
         "OpenStreetMap.org":           L_osmOrg,
         "Openstreetmap.org Grayscale": L_osmOrgGray,
         "OpenStreetMap.de":            L_osmDe,
         "Mapbox Streets":              L_streets,
         "Mapbox Grayscale":            L_grayscale,
//       "Mapbox Terrain":              L_terrain_v2,  // funzt net
         "Mapbox Satellite":            L_satellite
      };
      
//    OVERLAYS 
         
      var L_Contours = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:        "Contours"
                    ,layers:      "osm:Contours"
                    ,attribution: "unknown"
                   }));

      var L_Hillshading = L.tileLayer.wms(wmflabsUrl, merge_options(globalOverlayOptions, 
                   { name:          "Hillshading"
                    ,type:          ""
                    ,attribution:   "Hillshading by ??? from NASA SRTM data"
                    ,minzoom:       3
                    ,maxzoom:       20
                   }));
       var L_AL6 = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Adminlevel 6"
                    ,layers:        "osm:Old Admin Boundaries AL6"
            }));
       
       var L_AL7 = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Adminlevel 7"
                    ,layers:        "osm:Old Admin Boundaries AL7"
            }));
       
       var L_AL8 = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Adminlevel 8"
                    ,layers:        "osm:Old Admin Boundaries AL8"
            }));
       
       var L_AL9 = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Adminlevel 9"
                    ,layers:        "osm:Old Admin Boundaries AL9"
            }));
       
      var L_Residentials = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Residentials"
                    ,layers:        "osm:Residentials"
            }));  
      
      var L_Commercials = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Commercials"
                    ,layers:        "osm:Commercials"
                   }));        
      
      var L_Industrials = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Industrials"
                    ,layers:        "osm:Industrials"
                   }));

      var L_Adresses = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Adresses"
                    ,layers:        "osm:Adresses"
                   }));
/*
      var L_Firestations = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Firestations"
                    ,layers:        "osm:Fire_Stations"
                   }));
      
      var L_Hydrants = L.markerClusterGroup(merge_options(globalOverlayOptions, {
                     name:          "Hydrants"
                    ,type:          "WFS"
                    ,typeName:      "osm:Hydrants"
                    ,allMarkers:    []
                    ,disableClusteringAtZoom: 17
                    ,iconCreateFunction: function(cluster) {
                       return getClusterIcon(baseUrl+"/webcommon/images/svg/emergency_fire_hydrant.svg",cluster.getChildCount());
	                 }
                   }
                )
      );

      var L_Sirens = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Sirens"
                    ,layers:        "osm:Sirens"
                   }));      
      
      var L_KWF = L.markerClusterGroup(merge_options(globalOverlayOptions, 
                   { name:          "KWF"
                    ,type:          "WFS"
                    ,attribution:   KWFAttr
                    ,type:          "WFS"
                    ,typeName:      "osm:KWF"
                    ,allMarkers:    []
                    ,iconCreateFunction: function(cluster) {
                          return getClusterIcon(baseUrl+"/webcommon/images/svg/KWF_emergency_access_point.svg",cluster.getChildCount());
	                   }
                   }
                )
      );
      
      var L_Emergency_Access_Points = L.markerClusterGroup(merge_options(globalOverlayOptions, {
                     name:          "Emergency Access Points"
                    ,type:          "WFS"
                    ,typeName:      "osm:Emergency Access Points"
                    ,allMarkers:    []
                    ,iconCreateFunction: function(cluster) {
                       return getClusterIcon(baseUrl+"/webcommon/images/svg/highway_emergency_access_point.svg",cluster.getChildCount());
	                 }
                   }
                )
      );

      var L_Emergency_Assembly_Points = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Emergency Assembly Points"
                    ,layers:        "osm:Sammelpunkte"
                   }));   

      var L_Entries = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Entries & Exits"
                    ,layers:        "osm:Emergency_Exits2"
                    ,minZoom:       16
                    ,maxZoom:       20
                   })); 

      var L_Emergency_Phones = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Emergency Phones"
                    ,layers:        "osm:Emergency_Phones"
                   }));

      var L_Ambulance_Stations = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Ambulance Stations"
                    ,layers:        "osm:ambulance_stations"
                   }));

      var L_Defibrillators = L.tileLayer.wms(geosWMS, merge_options(globalOverlayOptions, 
                   { name:          "Defibrillators"
                    ,layers:        "osm:defibrillators"
                   }));
*/      
      var overlayLayers = {
         "Contours":                        L_Contours,
         "Hillshading":                     L_Hillshading,
         "Residentials":                    L_Residentials,
         "Commercials":                     L_Commercials,
         "Industrials":                     L_Industrials,
         "Adresses":                        L_Adresses,
         "Kreise/Kreisfreie St&auml;dte":   L_AL6,
         "Verbandsgemeinden":               L_AL7,
         "Ortschaften":                     L_AL8,
         "Ortsteile":                       L_AL9
      };

      var allMarkers = [];
      var initLayer;
      var localStorageBase = "";
      var hash;

      getLocalStorage();

      if (storageAvailable("localStorage")) {
         console.log(myName, "vor initLayer","checking",localStorageBase+"Base");
         console.log(myName, "initLayer is",localStorage.getItem(localStorageBase+"Base"));
   
         initLayer = (localStorage && localStorage.getItem(localStorageBase+"Base")!=null)
                     ?baseLayers[localStorage.getItem(localStorageBase+"Base")]:L_osmOrg;
      }
      else
         initLayer = L_osmOrgGray;
      
      console.log(myName, "initLayer=",initLayer._url);     
      var currentBaselayer = initLayer._url;

      if (typeof hash !== "string") hash = "15/50.1115/8.098"; // wambach
      var zoom = hash.split("/")[0];
      var center = [hash.split("/")[1],hash.split("/")[2]] ;
      console.log(myName, hash,"->",zoom,center[0],center[1]);

      var map = L.map("map", {
         center:            center,    // wambach                  
         zoom:              zoom,
         minZoom:           6,
         maxZoom:           20,
         layers:            initLayer,
         loadingControl:    true,
         editInOSMControlOptions: {
            zoomThreshold:     14,
            editors:           ["id","potlatch","josm"]
                                  } 
      });

      var layerControl = L.control.layers(baseLayers, overlayLayers);
      layerControl.addTo(map);
           
      $("select.leaflet-control-layers-overlays").attr("size",overlayLayers.length);
      
      for (var ovl in overlayLayers) {
         if (overlayLayers[ovl].active) {
            console.log(myName, "should activate", ovl);     
            console.log(myName, "should activate", overlayLayers[ovl])
            map.addLayer(overlayLayers[ovl]);
            oldMarkerlist = [];
         }
      };
      
      L.control.locate({
            setView:                "once"
           ,flyTo:                  true
           ,keepCurrentZoomLevel:   true
           ,drawMarker:             false
           ,strings: {
                 title: "Jump to my current position"
            }
         })
      .addTo(map);
     
      L.control.mousePosition({
         position: "bottomright",
         separator: ", ",
         emptyString: "",
         lngFirst: true,
         prefix: "lon,lat: "
      }).addTo(map);

      var popupContent = null;

      var popupOptions = {
         "minWidth":     "50",
         "maxWidth":    "600",
         "minHeight":    "50",
         "maxHeight":   "400",
         "closeButton": true
      };
      
      var dialogBoxWidth = 280;
      var dialog = L.control.dialog({
                   "size":    [dialogBoxWidth, 60],
                   "minSize": [dialogBoxWidth, 60],
                   "maxSize": [dialogBoxWidth, 90],
                    "anchor": [  2, 40]
                  }).setContent("<div style='margin:0; text-align:center;'>"
                              +    "<span style='font-size:200%; margin:0;'>"+myBase+" Map&nbsp;"
                              +    myVersion+"."+mySubversion+"</span>"
                              +    "<span style='font-size:100%'>."+mySerial+"</span>"
                              + "</div>"
                              + "<div id='lag'></div>"
                              + "<div id='zoomin' hidden=true><p style='font-size:150%;margin:0;text-align:center;color:#ff0000;'>"
                              + "Zoom in (to load data)</p></div>")
                    .addTo(map);
      dialog.freeze();
      
      var pixelBounds = map.getSize();

      var legendBoxWidth = 455;
      var legend = L.control.dialog({
                    "id":      "legendBox",
                    "size":    [legendBoxWidth, 530],
                    "minSize": [legendBoxWidth, 0],
                    "maxSize": [legendBoxWidth, 530],
                    "anchor":  [100,pixelBounds.x-legendBoxWidth-150],
                    initOpen:  false,
                  }).addTo(map);
                  
      var xxx = getLegend();
      legend.setContent(xxx.content);
      legend.setSize(xxx.size);
      legend.close();
//    legend.lock();
   
      var legendButton = L.easyButton({
          "id":     "legendButton",
          position: "topright",
          states: [{
                  stateName: "legend-closed",    // name the state
                  icon:      "fa-list",          // and define its properties
                  title:     "show legend",      // like its title
                  onClick: function(btn, map) {  // and its callback
                              legend.open();
                              legendIsOpen = true;
                              btn.state("legend-open");   // change state on click!
                           }
              }, {
                  stateName: "legend-open",
                  icon:      "fa-list",
                  title:     "close legend",
                  onClick: function(btn, map) {
                              legend.close();
                              legendIsOpen=false;
                              btn.state("legend-closed");    // change state on click!
                           }
          }]
      });
      
      legendButton.addTo(map);

      map.on("dialog:closed",function(e) {
         var myLocalName = "dialog:closed";
         console.log("dialog closed "+e.options.id);
         
         switch (e.options.id) {
            case "infoBox":
               break;
            case "legendBox":
               if (legendIsOpen) {
                  console.log(myLocalName,"'clicking' legendButton to close legendBox");
                  $("#legendButton").click();
               }
               break;
            };
      });

      map.on("zoomend", function(e) {
         var myLocalName = "onZoomend";
         var zoom = map.getZoom();
         console.log(myLocalName, "zoom changed to",zoom);
         if (zoom >= globalOverlayOptions.minZoom) {
            console.log(myLocalName, "fetch data");
            dialog.setSize([dialogBoxWidth, 60]);
            $("#zoomin").hide(); 
         }
         else {
            console.log(myLocalName, "don't fetch data");
            dialog.setSize([dialogBoxWidth,90]);
            $("#zoomin").show(); 
         };
      });
               
      var geocoder = L.Control.geocoder({
              defaultMarkGeocode: false
           })
          .on('markgeocode', function(e) {
              var bbox = e.geocode.bbox;
              var center = e.geocode.center;
              map.fitBounds(bbox);
          })
       .addTo(map);
                    
      map.on("baselayerchange", function(e){
         var myLocalName = "onBaselacherchange";
         console.log(myLocalName, "called");
         currentBaselayer = e.name;
         if (localStorage) {
            console.log(myLocalName, "saving "+localStorageBase+"Base", e.name, e);
            localStorage.setItem(localStorageBase+"Base", e.name);
         }
      }); 

      map.on("overlayadd", function(e){
         var myLocalName = "onOverlayadd";
         console.log(myLocalName,"activating:", e.name);
         overlayLayers[e.name].active = true;
         showLegend(getLegend());
         map.fire("moveend");
      });   

      map.on("overlayremove", function(e){
         myLocalName = "onOverlayremove";
         console.log(myLocalName, "overlayremove:",e.name);
         overlayLayers[e.name].active = false;
         showLegend(getLegend());
      });
      
// ********************************************************************************** //      

      $(window).on("unload", function(e){
        console.log(myName, "here is unload event handler:",e.type);
        saveLocalStorage();
      });
      
// ********************************************************************************** // 
      
      function S4() {
         return (((1+Math.random())*0x10000)|0).toString(16).substring(1); 
      };
      
      function guid() {                                                                  
         return(guid = (S4() + S4() + "-" + S4() + "-4" + S4().substr(0,3) + "-" + S4() + "-" + S4() + S4() + S4()).toLowerCase());
      };
      
// ********************************************************************************** // 
  
      function getClusterIcon(icon, counter) {
                  myLocalName = "getClusterIcon";
//                  console.log(myLocalName, "Icon=", icon, "Counter=",counter);
                  var size = 40;
                  if (counter >  10) size=50;
                  if (counter >  50) size=60;
                  if (counter > 100) size=70;
                  if (counter > 300) size=90;
//                  console.log(myLocalName,"size:",size);   
                  return L.icon({iconUrl: icon, iconSize: [size,size]});
               };
               
// ********************************************************************************** //      

      function inArray(array, value) {
         var i = array.length;
   
         while (i--) {
             if (array[i] == value) {
                 return true;
             }
         }
         return false;
      }
      
// ********************************************************************************** //      

      map.on("moveend", function(e) {
         var myLocalName = "onMoveend";
         console.log(myLocalName,"starting");
         var currentZoom = map.getZoom();

         bbox = map.getBounds().getSouth().toFixed(5) +","+ map.getBounds().getWest().toFixed(5) +","
              + map.getBounds().getNorth().toFixed(5) +","+ map.getBounds().getEast().toFixed(5);

         for (var ovl in overlayLayers) {

            if (overlayLayers[ovl].active 
              & overlayLayers[ovl].options.type == "WFS") {
               console.log(myLocalName, "Fetching data from GeoServer");
               var currentLayer = overlayLayers[ovl];
               console.log(myLocalName, "currentLayer=", currentLayer);
               
               if (currentZoom >= overlayLayers[ovl].options.minZoom) {
            
                  map.fire('dataloading');
                  $.ajax({
                     url: geosWFS,
                     async: false,
                     data: {
                             service : "WFS",
                             version : "1.1.0",
                             request : "GetFeature",
                        outputFormat : "application/json",
                             SrsName : "EPSG:4326",
                             typeName: overlayLayers[ovl].options.typeName,
                                 bbox: bbox
                     },
                     datatype: "json",               
                     success: function(data,text,xhr) {
                                 console.log(myLocalName, "success");
                       
                                 var newMarkerList = [];
                                 $(data.features).each(function(key, data) {
                                    if (!inArray(currentLayer.options.allMarkers,data.properties.osm_id)) {
                                       var marker = null;
                                       if (ovl=="Hydrants") {
                                          marker = L.marker(L.latLng(data.geometry.coordinates[1],
                                                                         data.geometry.coordinates[0]),
                                                      { icon: L.icon({
                                                          iconUrl:      baseUrl+"/webcommon/images/"+data.properties.icon, 
                                                          iconSize:     [24,24],
                                                          shadowUrl:    baseUrl+"/webcommon/images/svg/numbers/red/"+data.properties.diameter+".svg",
                                                          shadowAnchor: [12,-12],
                                                          shadowSize:   [24,24]
                                                                     }),
                                                        title:       data.properties.title
                                                      }
                                          );
                                       }
                                       else {
                                          marker = L.marker(L.latLng(data.geometry.coordinates[1],
                                                                     data.geometry.coordinates[0]),
                                                      { icon: L.icon({
                                                          iconUrl:      baseUrl+"/webcommon/images/"+data.properties.icon, 
                                                          iconSize:     [24,24]
                                                                     }),
                                                        title:       data.properties.title
                                                      }
                                          );   
                                       };
                                       switch(ovl) {
                                          case "KWF":
                                             marker.setZIndexOffset(100);
                                             break;
                                          case "Emergency Access Points":
                                             marker.setZIndexOffset(200);
                                             break;
                                          other:
                                             marker.setZIndexOffset(0);
                                       }
                                       popupContent = createContentFromFeature(data);  
                                       
                                       marker.bindPopup(popupContent,{
                                          autoPan:      true
                                         ,closeButton:  true
                                         ,autoClose:    true
                                         ,closeOnClick: false
                                         ,minWidth:     20
                                         ,maxWidth:     500});
                                       
                                       newMarkerList.push(marker);
                                       currentLayer.options.allMarkers.push(data.properties.osm_id);
                                    }
                                 });
                                 currentLayer.addLayers(newMarkerList); 
                              }
                  });
                  map.fire('dataload');
               }
               else {
                  console.log(myLocalName, "clearing", ovl);
                  currentLayer.clearLayers();
                  currentLayer.options.allMarkers = [];
               }
            }
         }
         console.log(myLocalName,"done");
      }); 
      
/* ********************************************************************************** */
      
      map.addControl(new L.Control.Permalink({text: "Permalink", layers: layerControl, position: "bottomright"}));
      
      map.addEventListener("click", onMapClick);
      
      console.log(myName, "Fireing moveend");
      map.fireEvent("moveend");  // Trigger WFS (GeoJson)   do not remove
      
      console.log(myName, "Fireing zoomend");
      map.fireEvent("zoomend");  // Triggert EditInOSM      do not remove

//    document.getElementById("map").style.cursor = "crosshair";

      setInterval(getAction,60*1000*10); 
      getAction(); 
      
      getOsmReplicationLag();
      setInterval(getOsmReplicationLag,60*1000);  
      setInterval(LagAnzeigen,1000); 

// ********************************************************************************************
// ************************** START Functions *************************************************
// ********************************************************************************************
 
      function formatHash(args) {
      var center, zoom, layers;

      if (args instanceof L.Map) {
        center = args.getCenter();
        zoom = args.getZoom();
      } else {
        center = L.latLng(50.1115, 8.098); // wambach 
        zoom = 15;
      }

      center = center.wrap();

      var precision = 5;
  
      var hash = zoom +
          "/" + center.lat.toFixed(precision) +
          "/" + center.lng.toFixed(precision);

      return hash;
  }
  
// ********************************************************************************** // 
  
  function getLegend() {
               
     var myLocalName = "getLegend";

     var images = baseUrl+"/webcommon/images/";
     var legendBoxSize = [455,15];
     var step = 26;
     
     var legendContent = "<div style='margin:0;'>"
                       +    "<table class='legendTable' border='0'>"
                       +    "<col width='220px'><col align='center'><col align='left' width='180px'>";
                       
      for (var ovl in overlayLayers) {
         var currentLayer = overlayLayers[ovl];
         if (currentLayer.active) {
            console.log(myLocalName,ovl,"is active");
            legendContent += "<tr><td><big><strong>"+ovl+"</strong></big></td>";
            legendBoxSize[1] = legendBoxSize[1]+step;
            switch(ovl) {
            case "Firestations":
                  legendContent += "<td><img src='"+images+"svg/amenity_fire_station.svg'</img></td><td>Firestation</td>"
                                +  "</tr>";
                  break;
               case "Hydrants":
                  legendContent += "<td><img src='"+images+"svg/emergency_fire_hydrant.svg'</img></td><td>Pillar</td>"
                                +  "<tr><td/><td><img src='"+images+"svg/emergency_fire_standpipe.svg'</img></td><td>Underground</td>"
                                +  "<tr><td/><td><img src='"+images+"svg/suction_point.svg'</img></td><td>Suction Point</td>"
                                +  "<tr><td/><td><img src='"+images+"svg/question-mark-hi.svg'</img></td><td>unknown</td>"
                                +  "</tr>";
                  legendBoxSize[1] = legendBoxSize[1]+step*3;
               
                  break;
               case "Sirens":
                  legendContent += "<td ><img src='"+images+"svg/emergency_siren.svg'</img></td><td>Siren</td>"
                                +  "</tr>";
                  break;
               case "KWF":
                  legendContent += "<td ><img src='"+images+"svg/KWF_emergency_access_point.svg'</img></td><td>KWF Emergency Access Point</td>"
                                +  "</tr>";
                  break;
               case "Emergency Access Points":
                  legendContent += "<td ><img src='"+images+"svg/highway_emergency_access_point.svg'</img></td><td>Emergency Access Point</td>"
                                +  "</tr>";
                  break;
               case "Emergency Assembly Points":
                  legendContent += "<td ><img src='"+images+"svg/assembly_point.svg'</img></td><td>Emergency Assembly Point</td>"
                                +  "</tr>";
                  break;
               case "Entries & Exits":
                  legendContent += "<td><img src='"+images+"josm/styles/standard/misc/entrance-yes.png'</img></td><td>Entrance</td>"
                                +  "<tr><td/><td><img src='"+images+"josm/styles/standard/misc/entrance-exit.png'</img></td><td>Exit</td>"
                                +  "<tr><td/><td><img src='"+images+"josm/styles/standard/misc/entrance-emergency.png'</img></td><td>Emergency Exit</td>"
                                +  "<tr><td/><td><img src='"+images+"josm/styles/standard/misc/entrance-main.png'</img></td><td>Main</td>"
                                +  "<tr><td/><td><img src='"+images+"josm/styles/standard/misc/entrance-service.png'</img></td><td>Service</td>"
                                +  "<tr><td/><td><img src='"+images+"svg/emergency_ward_entrance15.svg'</img></td><td>Ward Entrance</td>"
                                +  "</tr>";
                  legendBoxSize[1] = legendBoxSize[1]+step*5;
                  break;
               case "Emergency Phones":
                  legendContent += "<td ><img src='"+images+"svg/emergency_phone.svg'</img></td><td>Emergency Phone</td>"
                                +  "</tr>";
                  break;
               case "Ambulance Stations":
                  legendContent += "<td ><img src='"+images+"svg/ambulance_station.svg'</img></td><td>Ambulance Stations</td>"
                                +  "</tr>";
                  break;
               case "Defibrillators":
                  legendContent += "<td ><img src='"+images+"svg/Defibrillator.svg'</img></td><td>Defibrillator</td>"
                                +  "</tr>";
                  break;
               default :
            }
         }
      }     

      legendContent += "</table></div>";
      console.log(myLocalName+" "+legendContent);
      return({content: legendContent, size: legendBoxSize});
   };

   // **********************************************************************************
   
   function showLegend(xxx) {
      if (legend) {            
         legend.setContent(xxx.content);
         legend.setSize(xxx.size)

         if (!legendIsOpen) 
            legend.close();
      }
   };         

// ************************************************************************************

      function storageAvailable(type) {
         try {
             var storage = window[type],
                 x = "__storage_test__";
             storage.setItem(x, x);
             storage.removeItem(x);
             return true;
         }
         catch(e) {
             console.warn("Your browser blocks access to " + type);
             return false;
         }
      }
      
// **********************************************************************************    

      function saveLocalStorage() {
         
         var myLocalName = "saveLocalStorage";
         
         if (!storageAvailable("localStorage")) {
                console.log(myLocalName, "exit ########################## base #############################");
                return;
         }   
         else { 
            localStorageBase = "wambachers-osm.website/" + myBase+"/";
            localStorage.setItem(localStorageBase+"Version", myVersion + "." + mySubversion);
   
//          Overlays
//          console.log(myLocalName, "overlayLayers=",overlayLayers);
            for (var ovl in overlayLayers) {
               console.log(myLocalName, "setting",localStorageBase+"Overlays/"+ovl, "to", overlayLayers[ovl].active);
               localStorage.setItem(localStorageBase+"Overlays/"+ovl, overlayLayers[ovl].active);
            };
            
   //       bbox & zoom
      
            var hash = formatHash(map);
            console.log(myLocalName, "saving hash: ",hash);
            localStorage.setItem(localStorageBase+"hash",hash);
          
            console.log(myLocalName, "exit ########################## base #############################");
         }
      }

// ********************************************************************************** //

      function getLocalStorage() { 
                 
         var myLocalName = "getLocalStorage";
 
         if (!storageAvailable("localStorage")) {
                return;
         }   
         else {
            localStorageBase     = "wambachers-osm.website/" + myBase+"/";
   
            console.log(myLocalName, "localStorage:",localStorageBase);
   
//          console.log(myLocalName, "localStorage.length="+localStorage.length);
            for (var i=0;i<localStorage.length;i++) {
               var key = localStorage.key(i);
//             console.log(myLocalName, "key=", key, "item=", localStorage.getItem(localStorage.key(i)));
//             if (key.substring(22,33) == "/" + myBase + "/")
//                console.log(myLocalName, key, "->", localStorage.getItem(localStorage.key(i)));

               if (key.substring(0,32) == "osm.wno-edv-service.de/emergency") {
                  console.log(myLocalName, key, "will be deleted");
                  localStorage.removeItem(key);
               }

               if (key.substring(0,14) == "wambachers_osm") {
                  console.log(myLocalName, key, "will be deleted");
                  localStorage.removeItem(key);
               }
            }
   
            var version = localStorage.getItem(localStorageBase+"Version");
            console.log(myLocalName, "got version",version);
           
//          Overlays

            for (var ovl in overlayLayers) {
               console.log(myLocalName, "getting state of overlay",ovl);
               overlayLayers[ovl].active = localStorage.getItem(localStorageBase+"Overlays/"+ovl) == "true";
               console.log(myLocalName, "state of ", ovl, "=", overlayLayers[ovl].active);
            };
//          console.log(myLocalName, "overlayLayers=",overlayLayers);
            hash = localStorage.getItem(localStorageBase+"hash");
            console.log(myLocalName, "got hash",hash);
         }
      }

// *************************************************************************************

      function onMapClick(e) {
         var myLocalName = "onMapClick";
         var query = createQueryFromLayers();
         console.log(myLocalName, "onMapClick(): query=",query);
         if (query == "")
            return;
         var BBOX = map.getBounds()._southWest.lng + "," + map.getBounds()._southWest.lat + "," +
                    map.getBounds()._northEast.lng + "," + map.getBounds()._northEast.lat;
         var WIDTH = map.getSize().x;
         var HEIGHT = map.getSize().y;
         var X = map.layerPointToContainerPoint(e.layerPoint).x;
         var Y = map.layerPointToContainerPoint(e.layerPoint).y;
         var URL =           "?SERVICE=WMS&VERSION=1.1.1&REQUEST=GetFeatureInfo"  // WFS ist recommended 
                           + query
                           + "&BBOX="+BBOX
                           + "&BUFFER=150"
                           + "&FEATURE_COUNT="+FEATURE_COUNT
                           + "&HEIGHT="+HEIGHT+"&WIDTH="+WIDTH
                           + "&INFO_FORMAT=application/json"
                           + "&SRS=EPSG:4326"
                           + "&X="+X+"&Y="+Y
                           + "&EXCEPTIONS=application/vnd.ogc.se_xml"
         ;
         console.log(myLocalName, "URL="+geosWMS+encodeURI(URL));

         $.ajax({
            url:    geosWMS+encodeURI(URL),
            async:  false,
            success:    function (data, status, xhr) {
                           console.log(myLocalName, "xhr: "+xhr.status+" "+xhr.statusText);
                           var features = data.features;
                           if (features.length > 0) {
                              popupContent = createContentFromFeature(data.features[0]);
                           }
                           else
                              popupContent = null;
                           console.log(myLocalName, "in ajax popupContent="+popupContent);
                        },
             error: function (xhr, status, error) {
                           console.log(myLocalName, "in error xhr: "+xhr.status+" "+xhr.statusText);
                        }
         });

         if (popupContent != null) {
            var popup = L.popup(popupOptions)
              .setLatLng(e.latlng)
              .setContent(popupContent)
              .openOn(map);
         }
      }
      
// ********************************************************************************** //      

      function createQueryFromLayers() {
         var myLocalName = "CreateQueryFromLayers";
         console.log(myLocalName, "createQueryFromLayers()");
         var query = "";
         var first = true;
         var any = false;
         for (var ovl in overlayLayers) {
            if (overlayLayers[ovl].active 
              & overlayLayers[ovl].options.type == "WMS") { // Web Map Services u.a. für Tiles
               console.log(myLocalName, "active layer:",overlayLayers[ovl]);
               if (first) {
                  query = "&LAYERS=";
                  first = false;
               }
               query = query + overlayLayers[ovl].options.layers +","; 
               any = true;
            }
         }

         query = query.substring(0,query.length-1); // remove trailing ","

         var first = true;
         for (var ovl in overlayLayers) {
            if (overlayLayers[ovl].active 
              & overlayLayers[ovl].options.type == "WMS") { // tiles
               console.log(myLocalName, "active layer:",overlayLayers[ovl]);
               if (first) {
                  query = query + "&QUERY_LAYERS=";
                  first = false;
               }
               query = query + overlayLayers[ovl].options.layers +","; 
            }
         }
         query = query.substring(0,query.length-1); // remove trailing ","
         
         console.log(myLocalName, "any=", any, "query=",query);
         if (any)
            return query;
         else
            return "";
      }  

// **********************************************************************************************

      function createContentFromFeature(feature) {
         var myLocalName = "createContentFromFeature";

         var debug = 2;
         var tags = feature.properties.tags;
         console.log(myLocalName, "tags=",tags);
         var content = "";
         var tagsObj = JSON.parse(tags);
         content += "<div id='popup'>";
         content +=    "<div id='popupHeader'>";
         if (!isMobile) {
            content +=       "<div id='ph_left'>";
            content +=          "<p>Query: "+feature.properties.query+"</p>";
            content +=          "<p>Object: <a href='"+feature.properties.osm_link+"' target='_blank'>"+feature.properties.osm_link+"</a></p>";
//          content +=          "<p>Object: "+feature.properties.osm_link+"</p>";
            content +=       "</div>";
         }
         content +=       "<div id='ph_right'>";
         $.each( tagsObj, function( key, imageLink ) {
            if (key.toLowerCase() == "image" & !isMobile) {
               console.log(myLocalName, "image tag found:",imageLink);
  
               parser.href = imageLink;
               var proto = parser.protocol;
               console.log(myLocalName, "proto=",proto);
               
               switch(proto) {
                  case "http:": 
                  case "https:":
                     var newImageLink = getThumbnail(parser);
                     if (newImageLink != "") {
                          content += newImageLink;
                     }
                     break;
                  case "file:":
                     var image = imageLink.split(":")[1].replace(/ /g,"_");
                     console.log(myLocalName, "doing file", image);
                     var titles = "Image:"+image;
                     console.log(myLocalName, "titles:",titles);
                     
                     $.ajax({
                     type:      "GET",
                     timeout:   30000,
                     url:       "getWikimedia", 
                     data: {
                          caller:   myName,
                          base:     "emergency",
                          debug:    debug,     
                          action:   "query",
                          format:   "json",
                          prop:     "imageinfo",
                          iiprop:   "user|url|extmetadata",
                          titles:   titles
                     },
                     async:     false,
                     dataType:  "json",
                     success:   function(jsonObject,status) {

                                   if (debug > 2) console.log(jsonObject,status);
                                   
                                   var pages = jsonObject.query.pages;
                                   var imageinfo = pages[Object.keys(pages)[0]].imageinfo[0];
                                   var user = imageinfo.user;
                                   if (debug > 2) console.log(myLocalName, "user:", user);
                                   
                                   var url = imageinfo.url;
                                   if (debug > 2) console.log(myLocalName, "url:", url);
                                   
                                   var extmetadata = imageinfo.extmetadata;
                                   var credit = $(extmetadata.Credit.value).text();
                                   if (debug > 2) console.log(myLocalName, "credit:", credit);
                                   
                                   var lsm = extmetadata.LicenseShortName.value;
                                   if (debug > 2) console.log(myLocalName, "LicenseShortName:", lsm);
                                   
                                   var alt = extmetadata.ObjectName.value;
                                   if (debug > 2) console.log(myLocalName, "alt:", alt);

                                   var thumb = "https://upload.wikimedia.org/wikipedia/commons/thumb/" 
                                             + url.substring(47)
                                             + "/"+px+"px-"+image;
                                   if (debug > 2) console.log(myLocalName, "thumb:",thumb);
                                   
                                   var attribution = "<a title='By " + user + " (" + credit +") [" + lsm + "], via Wikimedia Commons'\n"
                                                   + "href='https://commons.wikimedia.org/wiki/File%3A" + image +"' target='_blank'>\n"
                                                   + "<img width='"+px+"' alt='" + alt + "'\n"
                                                   + "src='" + thumb + "'/></a>";
                                                   
                                   if (debug > 0) console.log(myLocalName, "Attribution",attribution);
                                   
                                   content += attribution;
                                   
                                   if (debug > 0) console.log(myLocalName, "content:",content);
                                },
                     error:     function(XMLHttpRequest, textStatus, errorThrown) {
                                   console.log(myLocalName, "An error has occurred making the request: " + textStatus + errorThrown);
                                }   
                     });           
                     break;
                  default:
                     alert ("Strange image tag: '"+imageLink+ "'\n\nNode: "+feature.properties.osm_link
                        +"\n\nPlease report to wambacher or wnordmann@gmx.de");
               }  
            }
         });
         
         content +=       "</div>";
         content +=    "</div>";
         content +=    "<div id='popupTable'>";
         content += "<table border='1'>";
         $.each( tagsObj, function( key, value ) {
            if (value != null)
               var xkey = key.split(":");
               if (debug > 2) console.log(myLocalName,"key=",key,"xkey=",xkey);
               switch(xkey[0]) {
                  case "z_order":
                  case "way_area":
                  case "pointonsurface":
                  case "bbox":
                  case "mway":
                  case "jd":
                  case "query":
                  case "osm_user":
                  case "osm_uid":
                     break;
                  case "osm_changeset":
                     if (!isMobile)
                        content += "   <tr><td>"+key+"</td><td><a href='"+protocol+"//www.openstreetmap.org/changeset/"+value+"' target='_blank'>"+value+"</a></td></tr>";
                     break;
                  case "image":
                  case "url":
                  case "website":
                     var xvalue = value;
                     
                     if (isURL(value)) {
                        if (value.length > 37) {
                           xvalue = value.substring(0,37)+" ...";
                        }  
                        content += "   <tr><td>"+key+"</td><td><a href='"+value+"' target='_blank'>"+xvalue+"</a></td></tr>";
                     }
                     else {
                        content += "   <tr><td>"+key+"</td><td>"+xvalue+"</td></tr>";
                     }

                     break;
                  case "flickr":
                     content += "   <tr><td>"+key+"</td><td><a href='"+protocol+"//www.flickr.com/"+value+"' target='_blank'>"+value+"</a></td></tr>";
                     break;
                  case "facebook":
                     content += "   <tr><td>"+key+"</td><td><a href='"+protocol+"//www.facebook.com/"+value+"' target='_blank'>"+value+"</a></td></tr>";
                     break;
                  case "twitter":
                     var xvalue = value;
                     if (value.substring(0,1) == "@") xvalue = value.substring(1);
                     content += "   <tr><td>"+key+"</td><td><a href='"+protocol+"//www.twitter.com/"+xvalue+"' target='_blank'>"+value+"</a></td></tr>";
                     break;
                  case "contact":
                     if (xkey.length > 1) {
                        switch (xkey[1]) {
                        case "website":
                           content += "   <tr><td>"+xkey[0]+"</td><td><a href='"+value+"' target='_blank'>"+value+"</a></td></tr>";
                           break;
                        case "flickr":
                           content += "   <tr><td>"+key+"</td><td><a href='"+protocol+"//www.flickr.com/"+value+"' target='_blank'>"+value+"</a></td></tr>";
                           break;
                        case "facebook":
                           content += "   <tr><td>"+key+"</td><td><a href='"+protocol+"//www.facebook.com/"+value+"' target='_blank'>"+value+"</a></td></tr>";
                           break;
                        case "twitter":
                           var xvalue = value;
                           if (value.substring(0,1) == "@") xvalue = value.substring(1);
                           content += "   <tr><td>"+key+"</td><td><a href='"+protocol+"//www.twitter.com/"+xvalue+"' target='_blank'>"+value+"</a></td></tr>";
                           break;
                        }
                     }
                     else
                       content += "   <tr><td>"+key+"</td><td>"+value+"</td></tr>"; 
                     break;
                  case "mapillary":
                     content += "   <tr><td>"+xkey[0]+"</td><td><a href='"+protocol+"//www.mapillary.com/map/im/"+value+"' target='_blank'>"+value+"</a></td></tr>";
                     break;
                  case "osm_timestamp":
                  case "osm_version":
                     if (!isMobile) 
                        content += "   <tr><td>"+key+"</td><td>"+value+"</td></tr>";
                     break;
                  default:
                     content += "   <tr><td>"+key+"</td><td>"+value+"</td></tr>";
                     break;
               }
         });
         content += "</table>";
         content += "</div>";
         
         if (!isMobile) {
            content += "<div id='popup_footer'>";  
            var osm_id = feature.properties.osm_id;
            if (osm_id.substring(0,1).match("n|w|r")) { // test node,way,relation - to identify inames
               if (protocol=="http:") {
                  josm = "<a href='http://127.0.0.1:8111";
               }
               else {
                  josm = "<a href='https://127.0.0.1:8112";
               }
      
               josm += "/load_object?new_layer=false&objects="+osm_id
                     + "' target='hiddenIframe'>"+osm_id+"</a>";
               console.log(josm);
               content += "<br>Edit with josm:&nbsp;"+josm;
            }
            content += "</div>";
         }
         console.log(myLocalName,"returning",content);
         return content; 
      }
   
// ****************************************************************************** //

      function ReloadPage() {
         console.log("ReloadPage(): loading="+loading);
         window.location.reload(true); // ohne cache
      }
      
// ****************************************************************************** //

      function getAction() {
         var myLocalName = "getAction";
         
         // console.log("L.Browser",JSON.stringify(L.Browser));
         
         $.ajax({
                 type:      "POST",
                 timeout:   30000,
                 url:       "getAction7", 
                 data: {
                      caller:       myName,
                      version:      myVersion,
                      subversion:   mySubversion,
                      serial:       mySerial,
                      host:         host,
                      base:         myBase,
                      log:          myBase,
                      database:     database,
                      uuid:         uuid,
                      browser:      JSON.stringify(L.Browser),
                      debug:        0
                 },
                 async:     false,
                 dataType:  "text",
                 success: function(action, status) { 
                    console.log(myLocalName, "getAction -->",action,status);
                    var ac = action.split(":");
                    console.log(myLocalName, "getAction: got order", ac[0]);
                    switch(ac[0]) {
                       case "reload":
                          console.log(myLocalName, "getAction: got order to reload page");
                          console.log(myLocalName, "pathname = "+window.location.pathname); // Returns path only
                          console.log(myLocalName, "url      = "+window.location.href);     // Returns full URL
                          ReloadPage();
                          break;
                       case "unread":
                          if (! ignoreMyMails) {
                             console.log(myLocalName, "start noty");
                             var n = noty({text:        "You got "+ac[1]+" unread mails in your "
                                                      +     "<a href='https://openstreetmap.org/user/"+ac[2]
                                                      +     "/inbox' target='_blank'>OSM-Mailbox</a> "
                                                      +         "Click link to open your mailbox.",
                                           buttons: [
//                             /*            {addClass: "btn btn-primary", 
//                                             text:        "   Read Mail", 
//                                             onClick:     function($noty) {
//                                                 $noty.close();
//                                                                 ignoreMyMails = true;
//                                          }
//                                    }, */
                                      {addClass:    "btn btn-primary", 
                                               text:        "Ignore in current session", 
                                               onClick:     function($noty) {
                                                               $noty.close();
                                                               ignoreMyMails = true;
                                                            }
                                      },
                                      {addClass:    "btn btn-danger",
                                               text:     "Close", 
                                            onClick:     function($noty) {
                                                            $noty.close();
                                                         }
                                       }
                                       ],
                                           layout:      "center",         
                                           type:        "success",
                                           theme:       "defaultTheme",
                                           timeout:     30000,
                                           killer:      true,
                                           dismissQueue:    false
                                          }
                                         );
                          }
                          break;
                       case "msg":
                          if (!ignoreMsg) {
                             var n = noty({text:        ac[1],
                                           buttons: [
                              {addClass:    "btn btn-primary",
                           text:        "Ignore in current session", 
                                               onClick:     function($noty) {
                                           $noty.close();
                                                                   ignoreMsg = true;
                                }
                          },
                                      {addClass:    "btn btn-primary", 
                                               text:        "   Close", 
                                               onClick:     function($noty) {
                                   $noty.close();
                                            }
                                      }
                                       ],
                                           layout:      "center",         
                                           type:        "success",
                                           theme:       "defaultTheme",
                                           timeout:         30000,
                                           killer:      true,
                                           dismissQueue:    false
                                       }
                                    );
                          }
                          break;
                       case "nothing":
                          console.log(myLocalName, "getAction: got order to do nothing");
                          break;
                       other:
                          console.log(myLocalName, "getAction: got something else");
                          break;
                    }
                 },
                 error: function(XMLHttpRequest, textStatus, errorThrown) {
                     console.log(myLocalName, "An error has occurred making the request: " + errorThrown);
                 }   
               });
      }
      
// ****************************************************************************** //

      function LagAnzeigen() {
         var myLocalName = "LagAnzeigen";
         
//       console.log(myLocalName,"vlag=",vlag);
         var absSekunden = Math.round(vlag);
         var relSekunden = absSekunden % 60;
         var absMinuten = Math.abs(Math.round((absSekunden - 30) / 60));
         var absStunden = Math.abs(Math.round((absMinuten - 30) / 60));
             absMinuten = absMinuten - absStunden*60;
         var absTage    = Math.abs(Math.round((absStunden - 12) / 24));
             absStunden = absStunden - absTage*24;
             
         var anzSekunden = "" + ((relSekunden > 9) ? relSekunden : "0" + relSekunden);
         var anzMinuten  = "" + ((absMinuten > 9) ? absMinuten   : "0" + absMinuten);
         var anzStunden  = "" + ((absStunden > 9) ? absStunden   : "0" + absStunden);
         var anzTage     = "" + ((absTage    > 9) ? absTage      : "0" + absTage);
         
//       console.log("LagAnzeigen: ", absSekunden, "->", anzTage, anzStunden, anzMinuten, anzSekunden);
         
         var lagText = "";
         
         if (absTage == 0)
            lagText = "lag: "+ anzStunden + ":" + anzMinuten + ":" + anzSekunden;
         else             
            lagText = "lag: "+ anzTage + " days " + anzStunden + ":" + anzMinuten + ":" + anzSekunden;
         
//       console.log("LagAnzeigen: ", lagText);
       
//         innerHtml =  "<a href=\"ReplicationLag.png\">lag: "+ anzStunden + ":" + anzMinuten + ":" + anzSekunden+"</a>";
//         console.log("innerHtml=",innerHtml);
//         document.getElementById("lag_div").innerHTML = innerHtml;
//       box.show(lagText);
//       console.log("dialog lag:", $("#lag").html());
         $("#lag").html("<p style='margin:0; text-align:center'>"+lagText+"</p>");
         vlag = vlag + 1;
      }
      
// ****************************************************************************** //

      function getOsmReplicationLag() {
         var myLocalName = "getOsmReplicationLag";
         console.log(myLocalName, database, "p3run", 2);
         
         vlag = -1;
         $.ajax({
                 type:      "POST",
                 async:     false,
                 timeout:   30000,
                 url:       "getOsmReplicationLag4",
                 data: {
                         caller:       myName,
                         base:         myBase,
                         version:      myVersion,
                         subversion:   mySubversion,
                         serial:       mySerial,
                         database:     database,
                         diff:         "p3run",
                         uuid:         uuid,
                         debug:        1
                       },
                 dataType:  "text",
                 success:   function(text,status) {
                               console.log(myLocalName, text, status);
                               vlag = parseInt(text);
                               console.log(myLocalName, "vlag=", vlag);
                            },
                 error: function(XMLHttpRequest, textStatus, errorThrown) {
                     console.log(myLocalName, "An error has occurred making the request: " + errorThrown);
                 }   
         });        
         LagAnzeigen();
      }
};
</script>

</head>

<body onLoad="javascript:init();">
   <div id="map"></div>
   <iframe style="display:none" id="hiddenIframe" name="hiddenIframe"></iframe>
</body>                                                                                                                          
</html>
