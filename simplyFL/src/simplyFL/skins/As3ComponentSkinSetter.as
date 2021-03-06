/**
 * Created by zhujiahe on 2015/8/7.
 */
package simplyFL.skins {
    import flash.display.Loader;
    import flash.events.Event;
    import flash.system.ApplicationDomain;
    import flash.system.LoaderContext;
    import flash.text.TextFormat;
    import flash.text.TextFormatAlign;
    import flash.utils.ByteArray;

    import simplyFL.containers.SimplePanel;
    import simplyFL.controls.BaseButton;
    import simplyFL.controls.Button;
    import simplyFL.controls.CheckBox;
    import simplyFL.controls.RadioButton;
    import simplyFL.controls.ScrollBar;
    import simplyFL.controls.TextArea;
    import simplyFL.controls.TextInput;
    import simplyFL.controls.TextScrollBar;
    import simplyFL.core.Label;
    import simplyFL.managers.StyleManager;

    public class As3ComponentSkinSetter {

        [Embed(source="as3Component_skin.swf", mimeType="application/octet-stream")]
        private static var commonStyle_skin:Class;

        public function As3ComponentSkinSetter() {
        }

        public static function setupSkin(callBack:Function = null):void {
            var textFormat:TextFormat = new TextFormat("微软雅黑", 12, 0x000000, false, false, false, "", "", TextFormatAlign.LEFT, 0, 0, 0, 0);
            var disabledTextFormat:TextFormat = new TextFormat("微软雅黑", 12, 0x999999, false, false, false, "", "", TextFormatAlign.LEFT, 0, 0, 0, 0);
            Label.DefaultTextFormat = textFormat;

            var loader:Loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function onComplete(event:Event):void {

                var focusStyleObj:Object = {
                    focusRectSkin: "As3Component_focusRectSkin",
                    focusRectPadding: 1
                };

                // set BaseButton Skins
                var styleObj:Object = {
                    width: 88, height: 22,
                    repeatDelay: 500, repeatInterval: 35,
                    upSkin: "As3Component_BaseButton_upSkin",
                    overSkin: "As3Component_BaseButton_overSkin",
                    downSkin: "As3Component_BaseButton_downSkin",
                    disabledSkin: "As3Component_BaseButton_disabledSkin",
                    selectedUpSkin: "As3Component_BaseButton_selectedUpSkin",
                    selectedOverSkin: "As3Component_BaseButton_selectedOverSkin",
                    selectedDownSkin: "As3Component_BaseButton_selectedDownSkin",
                    selectedDisabledSkin: "As3Component_BaseButton_selectedDisabledSkin"
                };
                StyleManager.registerStyles(BaseButton, "As3Component_BaseButton", styleObj);
                StyleManager.setComponentUiStyle(BaseButton, "As3Component_BaseButton");

                // set Button Skins
                styleObj = StyleManager.mergeStyles(styleObj, {
                            textPadding: 5,
                            embedFonts: false,
                            textFormat: textFormat,
                            disabledTextFormat: disabledTextFormat
                        }
                );
                StyleManager.registerStyles(Button, "As3Component_Button", styleObj);
                StyleManager.setComponentUiStyle(Button, "As3Component_Button");

                // set CheckBox Skins
                styleObj = {
                    width: 88, height: 22,
                    upIcon: "As3Component_CheckBox_upIcon",
                    overIcon: "As3Component_CheckBox_overIcon",
                    downIcon: "As3Component_CheckBox_downIcon",
                    disabledIcon: "As3Component_CheckBox_disabledIcon",
                    selectedUpIcon: "As3Component_CheckBox_selectedUpIcon",
                    selectedOverIcon: "As3Component_CheckBox_selectedOverIcon",
                    selectedDownIcon: "As3Component_CheckBox_selectedDownIcon",
                    selectedDisabledIcon: "As3Component_CheckBox_selectedDisabledIcon",
                    textPadding: 5,
                    embedFonts: false,
                    textFormat: textFormat,
                    disabledTextFormat: disabledTextFormat
                };
                StyleManager.registerStyles(CheckBox, "As3Component_CheckBox", styleObj);
                StyleManager.setComponentUiStyle(CheckBox, "As3Component_CheckBox");

                // set RadioButton Skins
                styleObj = {
                    width: 88, height: 22,
                    upIcon: "As3Component_RadioButton_upIcon",
                    overIcon: "As3Component_RadioButton_overIcon",
                    downIcon: "As3Component_RadioButton_downIcon",
                    disabledIcon: "As3Component_RadioButton_disabledIcon",
                    selectedUpIcon: "As3Component_RadioButton_selectedUpIcon",
                    selectedOverIcon: "As3Component_RadioButton_selectedOverIcon",
                    selectedDownIcon: "As3Component_RadioButton_selectedDownIcon",
                    selectedDisabledIcon: "As3Component_RadioButton_selectedDisabledIcon",
                    textPadding: 5,
                    embedFonts: false,
                    textFormat: textFormat,
                    disabledTextFormat: disabledTextFormat
                };
                StyleManager.registerStyles(RadioButton, "As3Component_RadioButton", styleObj);
                StyleManager.setComponentUiStyle(RadioButton, "As3Component_RadioButton");

                // set TextInput Skins
                styleObj = {
                    width: 100, height: 22,
                    upSkin: "As3Component_TextInput_upSkin",
                    disabledSkin: "As3Component_TextInput_disabledSkin",
                    textPadding: 0,
                    embedFonts: false,
                    textFormat: textFormat,
                    disabledTextFormat: disabledTextFormat
                };
                styleObj = StyleManager.mergeStyles(styleObj, focusStyleObj);
                StyleManager.registerStyles(TextInput, "As3Component_TextInput", styleObj);
                StyleManager.setComponentUiStyle(TextInput, "As3Component_TextInput");

                // set ScrollBar Skins
                styleObj = {
                    width: 15, height: 100, arrowHeight: 14,
                    downArrowDisabledSkin: "As3Component_ScrollBar_downArrowDisabledSkin",
                    downArrowDownSkin: "As3Component_ScrollBar_downArrowDownSkin",
                    downArrowOverSkin: "As3Component_ScrollBar_downArrowOverSkin",
                    downArrowUpSkin: "As3Component_ScrollBar_downArrowUpSkin",
                    upArrowDisabledSkin: "As3Component_ScrollBar_upArrowDisabledSkin",
                    upArrowDownSkin: "As3Component_ScrollBar_upArrowDownSkin",
                    upArrowOverSkin: "As3Component_ScrollBar_upArrowOverSkin",
                    upArrowUpSkin: "As3Component_ScrollBar_upArrowUpSkin",
                    trackDisabledSkin: "As3Component_ScrollBar_trackUpSkin",
                    trackDownSkin: "As3Component_ScrollBar_trackUpSkin",
                    trackOverSkin: "As3Component_ScrollBar_trackUpSkin",
                    trackUpSkin: "As3Component_ScrollBar_trackUpSkin",
                    thumbDisabledSkin: "As3Component_ScrollBar_thumbUpSkin",
                    thumbDownSkin: "As3Component_ScrollBar_thumbDownSkin",
                    thumbOverSkin: "As3Component_ScrollBar_thumbOverSkin",
                    thumbUpSkin: "As3Component_ScrollBar_thumbUpSkin",
                    thumbIcon: "As3Component_ScrollBar_thumbIcon",
                    repeatDelay: 500, repeatInterval: 35
                };
                StyleManager.registerStyles(ScrollBar, "As3Component_ScrollBar", styleObj);
                StyleManager.setComponentUiStyle(ScrollBar, "As3Component_ScrollBar");
                // set TextScrollBar Skins
                StyleManager.registerStyles(TextScrollBar, "As3Component_TextScrollBar", styleObj);
                StyleManager.setComponentUiStyle(TextScrollBar, "As3Component_TextScrollBar");

                // set TextArea Skins
                styleObj = StyleManager.mergeStyles({
                    width: 180, height: 200,
                    scrollBarWidth: 15,
                    upSkin: "As3Component_TextArea_upSkin",
                    disabledSkin: "As3Component_TextArea_disabledSkin",
                    textPadding: 3,
                    embedFonts: false,
                    textFormat: textFormat,
                    disabledTextFormat: disabledTextFormat
                }, styleObj, focusStyleObj);
                StyleManager.registerStyles(TextArea, "As3Component_TextArea", styleObj);
                StyleManager.setComponentUiStyle(TextArea, "As3Component_TextArea");

                // set SimplePanel Skins
                styleObj = {
                    width: 400, height: 300,
                    upSkin: "As3Component_SimplePanel_upSkin",
                    marginLeft: 0, marginRight: 0, marginTop: 24, marginBottom: 0
                };
                StyleManager.registerStyles(SimplePanel, "As3Component_SimplePanel", styleObj);
                StyleManager.setComponentUiStyle(SimplePanel, "As3Component_SimplePanel");

                callBack();
            });
            loader.loadBytes((new commonStyle_skin) as ByteArray, new LoaderContext(false, ApplicationDomain.currentDomain));
        }
    }
}
