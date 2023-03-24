package org.telegram.p048ui.ActionBar;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.StateSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.fork.enums.DrawerHolidayIconType;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesController$$ExternalSyntheticLambda237;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.time.SunDate;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AudioVisualizerDrawable;
import org.telegram.p048ui.Components.BackgroundGradientDrawable;
import org.telegram.p048ui.Components.BulletinFactory;
import org.telegram.p048ui.Components.ChoosingStickerStatusDrawable;
import org.telegram.p048ui.Components.CombinedDrawable;
import org.telegram.p048ui.Components.FragmentContextViewWavesDrawable;
import org.telegram.p048ui.Components.LinkPath;
import org.telegram.p048ui.Components.MotionBackgroundDrawable;
import org.telegram.p048ui.Components.MsgClockDrawable;
import org.telegram.p048ui.Components.PathAnimator;
import org.telegram.p048ui.Components.PlayingGameDrawable;
import org.telegram.p048ui.Components.Premium.PremiumGradient;
import org.telegram.p048ui.Components.RLottieDrawable;
import org.telegram.p048ui.Components.RecordStatusDrawable;
import org.telegram.p048ui.Components.RoundStatusDrawable;
import org.telegram.p048ui.Components.ScamDrawable;
import org.telegram.p048ui.Components.SendingFileDrawable;
import org.telegram.p048ui.Components.StatusDrawable;
import org.telegram.p048ui.Components.TypingDotsDrawable;
import org.telegram.p048ui.RoundVideoProgressShadow;
import org.telegram.p048ui.ThemeActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BaseTheme;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$TL_account_getMultiWallPapers;
import org.telegram.tgnet.TLRPC$TL_account_getTheme;
import org.telegram.tgnet.TLRPC$TL_account_getThemes;
import org.telegram.tgnet.TLRPC$TL_account_getWallPaper;
import org.telegram.tgnet.TLRPC$TL_baseThemeArctic;
import org.telegram.tgnet.TLRPC$TL_baseThemeClassic;
import org.telegram.tgnet.TLRPC$TL_baseThemeDay;
import org.telegram.tgnet.TLRPC$TL_baseThemeNight;
import org.telegram.tgnet.TLRPC$TL_baseThemeTinted;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputTheme;
import org.telegram.tgnet.TLRPC$TL_inputWallPaperSlug;
import org.telegram.tgnet.TLRPC$TL_theme;
import org.telegram.tgnet.TLRPC$TL_wallPaper;
import org.telegram.tgnet.TLRPC$TL_wallPaperNoFile;
import org.telegram.tgnet.TLRPC$Theme;
import org.telegram.tgnet.TLRPC$ThemeSettings;
import org.telegram.tgnet.TLRPC$Vector;
import org.telegram.tgnet.TLRPC$WallPaper;
import org.telegram.tgnet.TLRPC$WallPaperSettings;
/* renamed from: org.telegram.ui.ActionBar.Theme */
/* loaded from: classes5.dex */
public class Theme {
    public static Paint DEBUG_BLUE;
    public static Paint DEBUG_RED;
    private static Method StateListDrawable_getStateDrawableMethod;
    private static SensorEventListener ambientSensorListener;
    private static HashMap<MessageObject, AudioVisualizerDrawable> animatedOutVisualizerDrawables;
    private static HashMap<String, Integer> animatingColors;
    public static float autoNightBrighnessThreshold;
    public static String autoNightCityName;
    public static int autoNightDayEndTime;
    public static int autoNightDayStartTime;
    public static int autoNightLastSunCheckDay;
    public static double autoNightLocationLatitude;
    public static double autoNightLocationLongitude;
    public static boolean autoNightScheduleByLocation;
    public static int autoNightSunriseTime;
    public static int autoNightSunsetTime;
    public static Paint avatar_backgroundPaint;
    private static BackgroundGradientDrawable.Disposable backgroundGradientDisposable;
    public static Drawable calllog_msgCallDownGreenDrawable;
    public static Drawable calllog_msgCallDownRedDrawable;
    public static Drawable calllog_msgCallUpGreenDrawable;
    public static Drawable calllog_msgCallUpRedDrawable;
    private static boolean canStartHolidayAnimation;
    private static boolean changingWallpaper;
    public static Paint chat_actionBackgroundGradientDarkenPaint;
    public static Paint chat_actionBackgroundPaint;
    public static Paint chat_actionBackgroundPaint2;
    public static Paint chat_actionBackgroundSelectedPaint;
    public static TextPaint chat_actionTextPaint;
    public static TextPaint chat_actionTextPaint2;
    public static TextPaint chat_adminPaint;
    public static PorterDuffColorFilter chat_animatedEmojiTextColorFilter;
    public static Drawable chat_attachEmptyDrawable;
    public static TextPaint chat_audioPerformerPaint;
    public static TextPaint chat_audioTimePaint;
    public static TextPaint chat_audioTitlePaint;
    public static Drawable chat_backupIconDrawable;
    public static TextPaint chat_botButtonPaint;
    public static Drawable chat_botCardDrawable;
    public static Drawable chat_botInlineDrawable;
    public static Drawable chat_botInviteDrawable;
    public static Drawable chat_botLinkDrawable;
    public static Drawable chat_botWebViewDrawable;
    public static Drawable chat_commentArrowDrawable;
    public static Drawable chat_commentDrawable;
    public static Drawable chat_commentStickerDrawable;
    public static TextPaint chat_commentTextPaint;
    public static Paint chat_composeBackgroundPaint;
    public static Drawable chat_composeShadowDrawable;
    public static Drawable chat_composeShadowRoundDrawable;
    public static TextPaint chat_contactNamePaint;
    public static TextPaint chat_contactPhonePaint;
    public static TextPaint chat_contextResult_descriptionTextPaint;
    public static Drawable chat_contextResult_shadowUnderSwitchDrawable;
    public static TextPaint chat_contextResult_titleTextPaint;
    public static Paint chat_deleteProgressPaint;
    public static Paint chat_docBackPaint;
    public static TextPaint chat_docNamePaint;
    public static TextPaint chat_durationPaint;
    public static Drawable chat_editIconDrawable;
    public static Drawable chat_flameIcon;
    public static TextPaint chat_forwardNamePaint;
    public static TextPaint chat_gamePaint;
    public static Drawable chat_gifIcon;
    public static Drawable chat_goIconDrawable;
    public static Drawable chat_gradientLeftDrawable;
    public static Drawable chat_gradientRightDrawable;
    public static TextPaint chat_infoPaint;
    public static Drawable chat_inlineResultAudio;
    public static Drawable chat_inlineResultFile;
    public static Drawable chat_inlineResultLocation;
    public static TextPaint chat_instantViewPaint;
    public static Paint chat_instantViewRectPaint;
    public static TextPaint chat_livePaint;
    public static TextPaint chat_locationAddressPaint;
    public static TextPaint chat_locationTitlePaint;
    public static Drawable chat_lockIconDrawable;
    public static Paint chat_messageBackgroundSelectedPaint;
    private static AudioVisualizerDrawable chat_msgAudioVisualizeDrawable;
    public static Drawable chat_msgAvatarLiveLocationDrawable;
    public static TextPaint chat_msgBotButtonPaint;
    public static Drawable chat_msgCallDownGreenDrawable;
    public static Drawable chat_msgCallDownRedDrawable;
    public static Drawable chat_msgCallUpGreenDrawable;
    public static MsgClockDrawable chat_msgClockDrawable;
    public static Drawable chat_msgErrorDrawable;
    public static Paint chat_msgErrorPaint;
    public static TextPaint chat_msgGameTextPaint;
    public static Drawable chat_msgInBookmarkDrawable;
    public static Drawable chat_msgInBookmarkSelectedDrawable;
    public static MessageDrawable chat_msgInDrawable;
    public static Drawable chat_msgInInstantDrawable;
    public static MessageDrawable chat_msgInMediaDrawable;
    public static MessageDrawable chat_msgInMediaSelectedDrawable;
    public static Drawable chat_msgInMenuDrawable;
    public static Drawable chat_msgInMenuSelectedDrawable;
    public static Drawable chat_msgInPinnedDrawable;
    public static Drawable chat_msgInPinnedSelectedDrawable;
    public static Drawable chat_msgInRepliesDrawable;
    public static Drawable chat_msgInRepliesSelectedDrawable;
    public static MessageDrawable chat_msgInSelectedDrawable;
    public static Drawable chat_msgInSpoilerDrawable;
    public static Drawable chat_msgInViewsDrawable;
    public static Drawable chat_msgInViewsSelectedDrawable;
    public static Drawable chat_msgMediaBookmarkDrawable;
    public static Drawable chat_msgMediaCheckDrawable;
    public static Drawable chat_msgMediaHalfCheckDrawable;
    public static Drawable chat_msgMediaMenuDrawable;
    public static Drawable chat_msgMediaPinnedDrawable;
    public static Drawable chat_msgMediaRepliesDrawable;
    public static Drawable chat_msgMediaViewsDrawable;
    public static Drawable chat_msgNoSoundDrawable;
    public static Drawable chat_msgOutBookmarkDrawable;
    public static Drawable chat_msgOutBookmarkSelectedDrawable;
    public static Drawable chat_msgOutCheckDrawable;
    public static Drawable chat_msgOutCheckReadDrawable;
    public static Drawable chat_msgOutCheckReadSelectedDrawable;
    public static Drawable chat_msgOutCheckSelectedDrawable;
    public static MessageDrawable chat_msgOutDrawable;
    public static Drawable chat_msgOutHalfCheckDrawable;
    public static Drawable chat_msgOutHalfCheckSelectedDrawable;
    public static Drawable chat_msgOutInstantDrawable;
    public static MessageDrawable chat_msgOutMediaDrawable;
    public static MessageDrawable chat_msgOutMediaSelectedDrawable;
    public static Drawable chat_msgOutMenuDrawable;
    public static Drawable chat_msgOutMenuSelectedDrawable;
    public static Drawable chat_msgOutPinnedDrawable;
    public static Drawable chat_msgOutPinnedSelectedDrawable;
    public static Drawable chat_msgOutRepliesDrawable;
    public static Drawable chat_msgOutRepliesSelectedDrawable;
    public static MessageDrawable chat_msgOutSelectedDrawable;
    public static Drawable chat_msgOutSpoilerDrawable;
    public static Drawable chat_msgOutViewsDrawable;
    public static Drawable chat_msgOutViewsSelectedDrawable;
    public static Drawable chat_msgStickerBookmarkDrawable;
    public static Drawable chat_msgStickerCheckDrawable;
    public static Drawable chat_msgStickerHalfCheckDrawable;
    public static Drawable chat_msgStickerPinnedDrawable;
    public static Drawable chat_msgStickerRepliesDrawable;
    public static Drawable chat_msgStickerViewsDrawable;
    public static TextPaint chat_msgTextPaint;
    public static TextPaint[] chat_msgTextPaintEmoji;
    public static TextPaint chat_msgTextPaintOneEmoji;
    public static TextPaint chat_msgTextPaintThreeEmoji;
    public static TextPaint chat_msgTextPaintTwoEmoji;
    public static Drawable chat_msgUnlockDrawable;
    public static Drawable chat_muteIconDrawable;
    public static TextPaint chat_namePaint;
    public static Paint chat_outUrlPaint;
    public static Paint chat_pollTimerPaint;
    public static Paint chat_radialProgress2Paint;
    public static Paint chat_radialProgressPaint;
    public static Paint chat_radialProgressPausedSeekbarPaint;
    public static Drawable chat_redLocationIcon;
    public static Drawable chat_replyIconDrawable;
    public static Paint chat_replyLinePaint;
    public static TextPaint chat_replyNamePaint;
    public static TextPaint chat_replyTextPaint;
    public static Drawable chat_roundVideoShadow;
    public static Drawable chat_shareIconDrawable;
    public static TextPaint chat_shipmentPaint;
    public static Paint chat_statusPaint;
    public static Paint chat_statusRecordPaint;
    public static TextPaint chat_stickerCommentCountPaint;
    public static Paint chat_textSearchSelectionPaint;
    public static Paint chat_timeBackgroundPaint;
    public static TextPaint chat_timePaint;
    public static TextPaint chat_topicTextPaint;
    public static Drawable chat_translateIconDrawable;
    public static TextPaint chat_unlockExtendedMediaTextPaint;
    public static Paint chat_urlPaint;
    public static Paint checkboxSquare_backgroundPaint;
    public static Paint checkboxSquare_checkPaint;
    public static Paint checkboxSquare_eraserPaint;
    private static HashMap<String, Integer> currentColors;
    private static HashMap<String, Integer> currentColorsNoAccent;
    private static ThemeInfo currentDayTheme;
    private static ThemeInfo currentNightTheme;
    private static HashMap<String, Integer> currentPinnedPlayerColors;
    private static ThemeInfo currentTheme;
    private static HashMap<String, Integer> defaultColors;
    private static ThemeInfo defaultTheme;
    public static Paint dialogs_actionMessagePaint;
    public static RLottieDrawable dialogs_archiveAvatarDrawable;
    public static boolean dialogs_archiveAvatarDrawableRecolored;
    public static RLottieDrawable dialogs_archiveDrawable;
    public static boolean dialogs_archiveDrawableRecolored;
    public static TextPaint dialogs_archiveTextPaint;
    public static TextPaint dialogs_archiveTextPaintSmall;
    public static Drawable dialogs_checkDrawable;
    public static Drawable dialogs_checkReadDrawable;
    public static Drawable dialogs_clockDrawable;
    public static Paint dialogs_countGrayPaint;
    public static Paint dialogs_countPaint;
    public static TextPaint dialogs_countTextPaint;
    public static Drawable dialogs_errorDrawable;
    public static Paint dialogs_errorPaint;
    public static ScamDrawable dialogs_fakeDrawable;
    public static Drawable dialogs_forum_arrowDrawable;
    public static Drawable dialogs_halfCheckDrawable;
    public static RLottieDrawable dialogs_hidePsaDrawable;
    public static boolean dialogs_hidePsaDrawableRecolored;
    public static Drawable dialogs_holidayDrawable;
    private static int dialogs_holidayDrawableOffsetX;
    private static int dialogs_holidayDrawableOffsetY;
    public static Drawable dialogs_lock2Drawable;
    public static Drawable dialogs_lockDrawable;
    public static Drawable dialogs_mentionDrawable;
    public static TextPaint dialogs_messageNamePaint;
    public static TextPaint[] dialogs_messagePaint;
    public static TextPaint[] dialogs_messagePrintingPaint;
    public static Drawable dialogs_muteDrawable;
    public static TextPaint[] dialogs_nameEncryptedPaint;
    public static TextPaint[] dialogs_namePaint;
    public static TextPaint dialogs_offlinePaint;
    public static Paint dialogs_onlineCirclePaint;
    public static TextPaint dialogs_onlinePaint;
    public static RLottieDrawable dialogs_pinArchiveDrawable;
    public static Drawable dialogs_pinnedDrawable;
    public static Paint dialogs_pinnedPaint;
    public static Drawable dialogs_playDrawable;
    public static Paint dialogs_reactionsCountPaint;
    public static Drawable dialogs_reactionsMentionDrawable;
    public static Drawable dialogs_reorderDrawable;
    public static ScamDrawable dialogs_scamDrawable;
    public static TextPaint dialogs_searchNameEncryptedPaint;
    public static TextPaint dialogs_searchNamePaint;
    public static RLottieDrawable dialogs_swipeDeleteDrawable;
    public static RLottieDrawable dialogs_swipeMuteDrawable;
    public static RLottieDrawable dialogs_swipePinDrawable;
    public static RLottieDrawable dialogs_swipeReadDrawable;
    public static RLottieDrawable dialogs_swipeUnmuteDrawable;
    public static RLottieDrawable dialogs_swipeUnpinDrawable;
    public static RLottieDrawable dialogs_swipeUnreadDrawable;
    public static Paint dialogs_tabletSeletedPaint;
    public static TextPaint dialogs_timePaint;
    public static RLottieDrawable dialogs_unarchiveDrawable;
    public static Drawable dialogs_unmuteDrawable;
    public static RLottieDrawable dialogs_unpinArchiveDrawable;
    public static Drawable dialogs_verifiedCheckDrawable;
    public static Drawable dialogs_verifiedDrawable;
    public static Paint dividerExtraPaint;
    public static Paint dividerPaint;
    private static HashMap<String, String> fallbackKeys;
    private static FragmentContextViewWavesDrawable fragmentContextViewWavesDrawable;
    private static boolean hasPreviousTheme;
    private static ThreadLocal<float[]> hsvTemp1Local;
    private static ThreadLocal<float[]> hsvTemp2Local;
    private static ThreadLocal<float[]> hsvTemp3Local;
    private static ThreadLocal<float[]> hsvTemp4Local;
    private static ThreadLocal<float[]> hsvTemp5Local;
    private static boolean isApplyingAccent;
    private static boolean isCustomTheme;
    private static boolean isInNigthMode;
    private static boolean isPatternWallpaper;
    private static boolean isWallpaperMotion;
    private static long lastDelayUpdateTime;
    private static long lastHolidayCheckTime;
    private static int lastLoadingCurrentThemeTime;
    private static long lastThemeSwitchTime;
    private static Sensor lightSensor;
    private static boolean lightSensorRegistered;
    public static Paint linkSelectionPaint;
    private static int loadingCurrentTheme;
    public static Drawable moveUpDrawable;
    private static ArrayList<ThemeInfo> otherThemes;
    public static PathAnimator playPauseAnimator;
    private static int previousPhase;
    private static ThemeInfo previousTheme;
    public static TextPaint profile_aboutTextPaint;
    public static Drawable profile_verifiedCheckDrawable;
    public static Drawable profile_verifiedDrawable;
    private static RoundVideoProgressShadow roundPlayDrawable;
    public static int selectedAutoNightType;
    private static SensorManager sensorManager;
    private static Bitmap serviceBitmap;
    private static Matrix serviceBitmapMatrix;
    public static BitmapShader serviceBitmapShader;
    private static int serviceMessage2Color;
    private static int serviceMessageColor;
    public static int serviceMessageColorBackup;
    private static int serviceSelectedMessage2Color;
    private static int serviceSelectedMessageColor;
    public static int serviceSelectedMessageColorBackup;
    private static boolean shouldDrawGradientIcons;
    private static boolean switchDayRunnableScheduled;
    private static boolean switchNightRunnableScheduled;
    private static int switchNightThemeDelay;
    private static boolean switchingNightTheme;
    private static HashSet<String> themeAccentExclusionKeys;
    private static Drawable themedWallpaper;
    private static int themedWallpaperFileOffset;
    private static String themedWallpaperLink;
    public static ArrayList<ThemeInfo> themes;
    private static HashMap<String, ThemeInfo> themesDict;
    private static float[] tmpHSV5;
    private static int[] viewPos;
    private static Drawable wallpaper;
    public static Runnable wallpaperLoadTask;
    public static RLottieDrawable[] chat_attachButtonDrawables = new RLottieDrawable[9];
    public static final int default_shadow_color = ColorUtils.setAlphaComponent(-16777216, 27);
    private static final Object sync = new Object();
    private static float lastBrightnessValue = 1.0f;
    private static Runnable switchDayBrightnessRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.Theme.1
        @Override // java.lang.Runnable
        public void run() {
            boolean unused = Theme.switchDayRunnableScheduled = false;
            Theme.applyDayNightThemeMaybe(false);
        }
    };
    private static Runnable switchNightBrightnessRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.Theme.2
        @Override // java.lang.Runnable
        public void run() {
            boolean unused = Theme.switchNightRunnableScheduled = false;
            Theme.applyDayNightThemeMaybe(true);
        }
    };
    public static int DEFALT_THEME_ACCENT_ID = 99;
    private static Paint maskPaint = new Paint(1);
    private static boolean[] loadingRemoteThemes = new boolean[5];
    private static int[] lastLoadingThemesTime = new int[5];
    private static long[] remoteThemesHash = new long[5];
    public static Drawable[] avatarDrawables = new Drawable[13];
    private static StatusDrawable[] chat_status_drawables = new StatusDrawable[6];
    public static Drawable[] chat_msgInCallDrawable = new Drawable[2];
    public static Drawable[] chat_msgInCallSelectedDrawable = new Drawable[2];
    public static Drawable[] chat_msgOutCallDrawable = new Drawable[2];
    public static Drawable[] chat_msgOutCallSelectedDrawable = new Drawable[2];
    public static Drawable[] chat_pollCheckDrawable = new Drawable[2];
    public static Drawable[] chat_pollCrossDrawable = new Drawable[2];
    public static Drawable[] chat_pollHintDrawable = new Drawable[2];
    public static Drawable[] chat_psaHelpDrawable = new Drawable[2];
    public static Drawable[] chat_locationDrawable = new Drawable[2];
    public static Drawable[] chat_contactDrawable = new Drawable[2];
    public static Drawable[][] chat_fileStatesDrawable = (Drawable[][]) Array.newInstance(Drawable.class, 5, 2);
    public static Path[] chat_filePath = new Path[2];
    public static Path[] chat_updatePath = new Path[3];
    public static String[] keys_avatar_background = {"avatar_backgroundRed", "avatar_backgroundOrange", "avatar_backgroundViolet", "avatar_backgroundGreen", "avatar_backgroundCyan", "avatar_backgroundBlue", "avatar_backgroundPink"};
    public static String[] keys_avatar_background2 = {"avatar_background2Red", "avatar_background2Orange", "avatar_background2Violet", "avatar_background2Green", "avatar_background2Cyan", "avatar_background2Blue", "avatar_background2Pink"};
    public static String[] keys_avatar_nameInMessage = {"avatar_nameInMessageRed", "avatar_nameInMessageOrange", "avatar_nameInMessageViolet", "avatar_nameInMessageGreen", "avatar_nameInMessageCyan", "avatar_nameInMessageBlue", "avatar_nameInMessagePink"};
    public static final String[] keys_colors = {"color_lightblue", "color_blue", "color_green", "color_lightgreen", "color_red", "color_orange", "color_yellow", "color_purple", "color_cyan"};
    private static final HashMap<String, Drawable> defaultChatDrawables = new HashMap<>();
    private static final HashMap<String, String> defaultChatDrawableColorKeys = new HashMap<>();
    private static final HashMap<String, Paint> defaultChatPaints = new HashMap<>();
    private static final HashMap<String, String> defaultChatPaintColors = new HashMap<>();
    private static HashSet<String> myMessagesColorKeys = new HashSet<>();
    private static HashSet<String> myMessagesBubblesColorKeys = new HashSet<>();

    /* renamed from: org.telegram.ui.ActionBar.Theme$BackgroundDrawableSettings */
    /* loaded from: classes5.dex */
    public static class BackgroundDrawableSettings {
        public Boolean isCustomTheme;
        public Boolean isPatternWallpaper;
        public Boolean isWallpaperMotion;
        public Drawable wallpaper;
    }

    private static float abs(float f) {
        return f > BitmapDescriptorFactory.HUE_RED ? f : -f;
    }

    public static void destroyResources() {
    }

    public static int getWallpaperColor(int i) {
        if (i == 0) {
            return 0;
        }
        return i | (-16777216);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x358a A[Catch: all -> 0x35b7, TryCatch #3 {Exception -> 0x38ca, blocks: (B:61:0x3398, B:63:0x33b0, B:74:0x33f3, B:76:0x3401, B:84:0x342e, B:86:0x3432, B:88:0x343a, B:89:0x344c, B:90:0x3458, B:92:0x345e, B:94:0x3468, B:96:0x346c, B:98:0x349a, B:100:0x349e, B:171:0x36da, B:173:0x36e0, B:174:0x36e9, B:176:0x36ed, B:178:0x36f5, B:180:0x36f9, B:182:0x36fd, B:183:0x36ff, B:185:0x3709, B:155:0x35cf, B:158:0x35ee, B:159:0x35f6, B:161:0x3602, B:163:0x360e, B:167:0x361a, B:169:0x36bf, B:164:0x3614, B:190:0x3721, B:191:0x3727, B:195:0x3732, B:197:0x3789, B:199:0x3797, B:201:0x37a5, B:203:0x37b3, B:202:0x37ac, B:198:0x3790, B:77:0x3411, B:79:0x3419, B:81:0x3422, B:83:0x342c, B:64:0x33bf, B:66:0x33c7, B:68:0x33cf, B:70:0x33d9, B:72:0x33e1, B:102:0x34af, B:105:0x34c4, B:107:0x34d9, B:108:0x34df, B:110:0x34f1, B:113:0x3501, B:117:0x350d, B:121:0x3524, B:125:0x3535, B:128:0x3546, B:131:0x354f, B:133:0x3563, B:137:0x356f, B:139:0x3576, B:140:0x3586, B:142:0x358a, B:143:0x358e, B:145:0x3599, B:146:0x35a0, B:122:0x352b, B:118:0x3517), top: B:240:0x3398 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x3599 A[Catch: all -> 0x35b7, TryCatch #3 {Exception -> 0x38ca, blocks: (B:61:0x3398, B:63:0x33b0, B:74:0x33f3, B:76:0x3401, B:84:0x342e, B:86:0x3432, B:88:0x343a, B:89:0x344c, B:90:0x3458, B:92:0x345e, B:94:0x3468, B:96:0x346c, B:98:0x349a, B:100:0x349e, B:171:0x36da, B:173:0x36e0, B:174:0x36e9, B:176:0x36ed, B:178:0x36f5, B:180:0x36f9, B:182:0x36fd, B:183:0x36ff, B:185:0x3709, B:155:0x35cf, B:158:0x35ee, B:159:0x35f6, B:161:0x3602, B:163:0x360e, B:167:0x361a, B:169:0x36bf, B:164:0x3614, B:190:0x3721, B:191:0x3727, B:195:0x3732, B:197:0x3789, B:199:0x3797, B:201:0x37a5, B:203:0x37b3, B:202:0x37ac, B:198:0x3790, B:77:0x3411, B:79:0x3419, B:81:0x3422, B:83:0x342c, B:64:0x33bf, B:66:0x33c7, B:68:0x33cf, B:70:0x33d9, B:72:0x33e1, B:102:0x34af, B:105:0x34c4, B:107:0x34d9, B:108:0x34df, B:110:0x34f1, B:113:0x3501, B:117:0x350d, B:121:0x3524, B:125:0x3535, B:128:0x3546, B:131:0x354f, B:133:0x3563, B:137:0x356f, B:139:0x3576, B:140:0x3586, B:142:0x358a, B:143:0x358e, B:145:0x3599, B:146:0x35a0, B:122:0x352b, B:118:0x3517), top: B:240:0x3398 }] */
    /* JADX WARN: Type inference failed for: r6v78 */
    /* JADX WARN: Type inference failed for: r6v79, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v90 */
    static {
        /*
            Method dump skipped, instructions count: 16232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.<clinit>():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void applyPinnedPlayerTheme() {
        /*
            android.content.Context r0 = org.telegram.messenger.ApplicationLoader.applicationContext
            java.lang.String r1 = "themeconfig"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            java.lang.String r1 = "lastDayTheme"
            java.lang.String r3 = "Blue"
            java.lang.String r1 = r0.getString(r1, r3)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = getTheme(r1)
            if (r4 == 0) goto L21
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = getTheme(r1)
            boolean r4 = r4.isDark()
            if (r4 == 0) goto L22
        L21:
            r1 = r3
        L22:
            java.lang.String r4 = "lastDarkTheme"
            java.lang.String r5 = "Dark Blue"
            java.lang.String r0 = r0.getString(r4, r5)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = getTheme(r0)
            if (r4 == 0) goto L3a
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = getTheme(r0)
            boolean r4 = r4.isDark()
            if (r4 != 0) goto L3b
        L3a:
            r0 = r5
        L3b:
            boolean r4 = r1.equals(r0)
            if (r4 == 0) goto L59
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p048ui.ActionBar.Theme.currentTheme
            boolean r4 = r4.isDark()
            if (r4 != 0) goto L57
            boolean r4 = r1.equals(r5)
            if (r4 != 0) goto L57
            java.lang.String r4 = "Night"
            boolean r4 = r1.equals(r4)
            if (r4 == 0) goto L5a
        L57:
            r5 = r0
            goto L5b
        L59:
            r5 = r0
        L5a:
            r3 = r1
        L5b:
            boolean r0 = org.telegram.messenger.SharedConfig.isPinnedPlayerNightThemeEnabled
            if (r0 == 0) goto L64
            org.telegram.ui.ActionBar.Theme$ThemeInfo r0 = getTheme(r5)
            goto L68
        L64:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r0 = getTheme(r3)
        L68:
            java.lang.String r1 = r0.assetName
            r3 = 0
            if (r1 == 0) goto L72
            java.util.HashMap r1 = getThemeFileValues(r3, r1, r3)
            goto L7d
        L72:
            java.io.File r1 = new java.io.File
            java.lang.String r4 = r0.pathToFile
            r1.<init>(r4)
            java.util.HashMap r1 = getThemeFileValues(r1, r3, r3)
        L7d:
            java.util.HashMap r3 = new java.util.HashMap
            r3.<init>(r1)
            org.telegram.p048ui.ActionBar.Theme.currentPinnedPlayerColors = r3
            org.telegram.ui.ActionBar.Theme$ThemeAccent r0 = r0.getAccent(r2)
            if (r0 == 0) goto L8f
            java.util.HashMap<java.lang.String, java.lang.Integer> r2 = org.telegram.p048ui.ActionBar.Theme.currentPinnedPlayerColors
            r0.fillAccentColors(r1, r2)
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.applyPinnedPlayerTheme():void");
    }

    public static Drawable createEmojiIconSelectorVectorDrawable(Context context, int i, int i2, int i3) {
        Drawable drawable = AppCompatResources.getDrawable(context, i);
        if (drawable != null && i2 != 0) {
            drawable.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN));
        }
        Drawable drawable2 = AppCompatResources.getDrawable(context, i);
        if (drawable2 != null && i3 != 0) {
            drawable2.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_IN));
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.setEnterFadeDuration(1);
        stateListDrawable.setExitFadeDuration(200);
        stateListDrawable.addState(new int[]{16842913}, drawable2);
        stateListDrawable.addState(new int[0], drawable);
        return stateListDrawable;
    }

    public static void setEmojiVectorDrawableColor(Drawable drawable, int i, boolean z) {
        if (drawable instanceof StateListDrawable) {
            Drawable stateDrawable = getStateDrawable(drawable, !z ? 1 : 0);
            if (stateDrawable instanceof VectorDrawableCompat) {
                stateDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
        }
    }

    public static Drawable createSimpleSelectorCircleDrawable(int i, String str, String str2) {
        return createSimpleSelectorCircleDrawable(AndroidUtilities.m50dp(i), getColor(str), getColor(str2));
    }

    public static boolean isCurrentThemeDefault() {
        return currentTheme == defaultTheme;
    }

    /* renamed from: org.telegram.ui.ActionBar.Theme$PinnedPlayerResourcesProvider */
    /* loaded from: classes5.dex */
    public static class PinnedPlayerResourcesProvider implements ResourcesProvider {
        @Override // org.telegram.p048ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
            Theme.applyServiceShaderMatrix(i, i2, f, f2);
        }

        @Override // org.telegram.p048ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ int getColorOrDefault(String str) {
            return ResourcesProvider.CC.$default$getColorOrDefault(this, str);
        }

        @Override // org.telegram.p048ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ Integer getCurrentColor(String str) {
            return getColor(str);
        }

        @Override // org.telegram.p048ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ Drawable getDrawable(String str) {
            return ResourcesProvider.CC.$default$getDrawable(this, str);
        }

        @Override // org.telegram.p048ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ Paint getPaint(String str) {
            return ResourcesProvider.CC.$default$getPaint(this, str);
        }

        @Override // org.telegram.p048ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ boolean hasGradientService() {
            return ResourcesProvider.CC.$default$hasGradientService(this);
        }

        @Override // org.telegram.p048ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ void setAnimatedColor(String str, int i) {
            ResourcesProvider.CC.$default$setAnimatedColor(this, str, i);
        }

        @Override // org.telegram.p048ui.ActionBar.Theme.ResourcesProvider
        public Integer getColor(String str) {
            if (SharedConfig.isPinnedPlayerThemeOverridden) {
                Integer num = (Integer) Theme.currentPinnedPlayerColors.get(str);
                if (num == null) {
                    String str2 = (String) Theme.fallbackKeys.get(str);
                    if (str2 != null) {
                        num = (Integer) Theme.currentPinnedPlayerColors.get(str2);
                    }
                    if (num == null) {
                        return Integer.valueOf(Theme.getDefaultColor(str));
                    }
                }
                return num;
            }
            return Integer.valueOf(Theme.getColor(str));
        }
    }

    public static void applyDefaultShadow(Paint paint) {
        paint.setShadowLayer(AndroidUtilities.dpf2(1.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(0.33f), default_shadow_color);
    }

    /* renamed from: org.telegram.ui.ActionBar.Theme$MessageDrawable */
    /* loaded from: classes5.dex */
    public static class MessageDrawable extends Drawable {
        public static MotionBackgroundDrawable[] motionBackground = new MotionBackgroundDrawable[3];
        private int alpha;
        private Drawable[][] backgroundDrawable;
        private int[][] backgroundDrawableColor;
        private Rect backupRect;
        private Bitmap crosfadeFromBitmap;
        private Shader crosfadeFromBitmapShader;
        public MessageDrawable crossfadeFromDrawable;
        public float crossfadeProgress;
        private boolean currentAnimateGradient;
        private int[][] currentBackgroundDrawableRadius;
        private int currentBackgroundHeight;
        private int currentColor;
        private int currentGradientColor1;
        private int currentGradientColor2;
        private int currentGradientColor3;
        private int[] currentShadowDrawableRadius;
        private int currentType;
        private boolean drawFullBubble;
        private Shader gradientShader;
        private boolean isBottomNear;
        public boolean isCrossfadeBackground;
        private final boolean isOut;
        public boolean isSelected;
        private boolean isTopNear;
        public boolean lastDrawWithShadow;
        private Matrix matrix;
        private int overrideRoundRadius;
        private float overrideRounding;
        private Paint paint;
        private Path path;
        PathDrawParams pathDrawCacheParams;
        private RectF rect;
        private final ResourcesProvider resourcesProvider;
        private Paint selectedPaint;
        private Drawable[] shadowDrawable;
        private Bitmap[] shadowDrawableBitmap;
        private int[] shadowDrawableColor;
        public boolean themePreview;
        private int topY;
        Drawable transitionDrawable;
        int transitionDrawableColor;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(int i, PorterDuff.Mode mode) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public MessageDrawable(int i, boolean z, boolean z2) {
            this(i, z, z2, null);
        }

        public MessageDrawable(int i, boolean z, boolean z2, ResourcesProvider resourcesProvider) {
            this.paint = new Paint(1);
            this.rect = new RectF();
            this.matrix = new Matrix();
            this.backupRect = new Rect();
            this.currentShadowDrawableRadius = new int[]{-1, -1, -1, -1};
            this.shadowDrawableBitmap = new Bitmap[4];
            this.shadowDrawable = new Drawable[4];
            this.shadowDrawableColor = new int[]{-1, -1, -1, -1};
            this.currentBackgroundDrawableRadius = new int[][]{new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}};
            this.backgroundDrawable = (Drawable[][]) Array.newInstance(Drawable.class, 2, 4);
            this.backgroundDrawableColor = new int[][]{new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}};
            this.resourcesProvider = resourcesProvider;
            this.isOut = z;
            this.currentType = i;
            this.isSelected = z2;
            this.path = new Path();
            this.selectedPaint = new Paint(1);
            this.alpha = 255;
        }

        public boolean hasGradient() {
            return this.gradientShader != null && Theme.shouldDrawGradientIcons;
        }

        public void applyMatrixScale() {
            Bitmap bitmap;
            if (this.gradientShader instanceof BitmapShader) {
                char c = 2;
                if (this.isCrossfadeBackground && (bitmap = this.crosfadeFromBitmap) != null) {
                    char c2 = this.currentType != 2 ? (char) 0 : (char) 1;
                    float min = 1.0f / Math.min(bitmap.getWidth() / motionBackground[c2].getBounds().width(), this.crosfadeFromBitmap.getHeight() / motionBackground[c2].getBounds().height());
                    this.matrix.postScale(min, min);
                    return;
                }
                if (!this.themePreview) {
                    c = this.currentType != 2 ? (char) 0 : (char) 1;
                }
                Bitmap bitmap2 = motionBackground[c].getBitmap();
                float min2 = 1.0f / Math.min(bitmap2.getWidth() / motionBackground[c].getBounds().width(), bitmap2.getHeight() / motionBackground[c].getBounds().height());
                this.matrix.postScale(min2, min2);
            }
        }

        public Shader getGradientShader() {
            return this.gradientShader;
        }

        public Matrix getMatrix() {
            return this.matrix;
        }

        protected int getColor(String str) {
            if (this.currentType == 2) {
                return Theme.getColor(str);
            }
            ResourcesProvider resourcesProvider = this.resourcesProvider;
            Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
            return color != null ? color.intValue() : Theme.getColor(str);
        }

        protected Integer getCurrentColor(String str) {
            if (this.currentType == 2) {
                return Integer.valueOf(Theme.getColor(str));
            }
            ResourcesProvider resourcesProvider = this.resourcesProvider;
            return resourcesProvider != null ? resourcesProvider.getCurrentColor(str) : (Integer) Theme.currentColors.get(str);
        }

        public void setTop(int i, int i2, int i3, boolean z, boolean z2) {
            setTop(i, i2, i3, i3, 0, 0, z, z2);
        }

        /* JADX WARN: Removed duplicated region for block: B:113:0x029d  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x02b3  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x02c0  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x02c9  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x009e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void setTop(int r32, int r33, int r34, int r35, int r36, int r37, boolean r38, boolean r39) {
            /*
                Method dump skipped, instructions count: 728
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.MessageDrawable.setTop(int, int, int, int, int, int, boolean, boolean):void");
        }

        public int getTopY() {
            return this.topY;
        }

        /* renamed from: dp */
        private int m34dp(float f) {
            if (this.currentType == 2) {
                return (int) Math.ceil(f * 3.0f);
            }
            return AndroidUtilities.m51dp(f);
        }

        public Paint getPaint() {
            return this.paint;
        }

        public Drawable[] getShadowDrawables() {
            return this.shadowDrawable;
        }

        public Drawable getBackgroundDrawable() {
            char c;
            int color;
            int i = this.overrideRoundRadius;
            boolean z = false;
            if (i == 0) {
                i = this.overrideRounding > BitmapDescriptorFactory.HUE_RED ? 0 : AndroidUtilities.m50dp(SharedConfig.bubbleRadius);
            }
            boolean z2 = this.isTopNear;
            if (z2 && this.isBottomNear) {
                c = 3;
            } else if (z2) {
                c = 2;
            } else {
                c = this.isBottomNear ? (char) 1 : (char) 0;
            }
            boolean z3 = this.isSelected;
            boolean z4 = (this.gradientShader != null || z3 || this.isCrossfadeBackground) ? false : true;
            int color2 = getColor(this.isOut ? "chat_outBubbleShadow" : "chat_inBubbleShadow");
            if (this.lastDrawWithShadow != z4 || this.currentBackgroundDrawableRadius[z3 ? 1 : 0][c] != i || (z4 && this.shadowDrawableColor[c] != color2)) {
                this.currentBackgroundDrawableRadius[z3 ? 1 : 0][c] = i;
                try {
                    Bitmap createBitmap = Bitmap.createBitmap(m34dp(50.0f), m34dp(40.0f), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    this.backupRect.set(getBounds());
                    if (z4) {
                        this.shadowDrawableColor[c] = color2;
                        Paint paint = new Paint(1);
                        paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m34dp(40.0f), new int[]{358573417, 694117737}, (float[]) null, Shader.TileMode.CLAMP));
                        paint.setColorFilter(new PorterDuffColorFilter(color2, PorterDuff.Mode.MULTIPLY));
                        paint.setShadowLayer(2.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, -1);
                        if (AndroidUtilities.density > 1.0f) {
                            setBounds(-1, -1, createBitmap.getWidth() + 1, createBitmap.getHeight() + 1);
                        } else {
                            setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                        }
                        draw(canvas, paint);
                        if (AndroidUtilities.density > 1.0f) {
                            paint.setColor(0);
                            paint.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                            setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                            draw(canvas, paint);
                        }
                    }
                    Paint paint2 = new Paint(1);
                    paint2.setColor(-1);
                    setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                    draw(canvas, paint2);
                    this.backgroundDrawable[z3 ? 1 : 0][c] = new NinePatchDrawable(createBitmap, getByteBuffer((createBitmap.getWidth() / 2) - 1, (createBitmap.getWidth() / 2) + 1, (createBitmap.getHeight() / 2) - 1, (createBitmap.getHeight() / 2) + 1).array(), new Rect(), null);
                    try {
                        setBounds(this.backupRect);
                    } catch (Throwable unused) {
                    }
                    z = true;
                } catch (Throwable unused2) {
                }
            }
            this.lastDrawWithShadow = z4;
            if (this.isSelected) {
                color = getColor(this.isOut ? "chat_outBubbleSelected" : "chat_inBubbleSelected");
            } else {
                color = getColor(this.isOut ? "chat_outBubble" : "chat_inBubble");
            }
            Drawable[][] drawableArr = this.backgroundDrawable;
            if (drawableArr[z3 ? 1 : 0][c] != null && (this.backgroundDrawableColor[z3 ? 1 : 0][c] != color || z)) {
                drawableArr[z3 ? 1 : 0][c].setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
                this.backgroundDrawableColor[z3 ? 1 : 0][c] = color;
            }
            return this.backgroundDrawable[z3 ? 1 : 0][c];
        }

        public Drawable getTransitionDrawable(int i) {
            if (this.transitionDrawable == null) {
                Bitmap createBitmap = Bitmap.createBitmap(m34dp(50.0f), m34dp(40.0f), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                this.backupRect.set(getBounds());
                Paint paint = new Paint(1);
                paint.setColor(-1);
                setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                draw(canvas, paint);
                this.transitionDrawable = new NinePatchDrawable(createBitmap, getByteBuffer((createBitmap.getWidth() / 2) - 1, (createBitmap.getWidth() / 2) + 1, (createBitmap.getHeight() / 2) - 1, (createBitmap.getHeight() / 2) + 1).array(), new Rect(), null);
                setBounds(this.backupRect);
            }
            if (this.transitionDrawableColor != i) {
                this.transitionDrawableColor = i;
                this.transitionDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
            }
            return this.transitionDrawable;
        }

        public MotionBackgroundDrawable getMotionBackgroundDrawable() {
            if (this.themePreview) {
                return motionBackground[2];
            }
            return motionBackground[this.currentType == 2 ? (char) 1 : (char) 0];
        }

        public Drawable getShadowDrawable() {
            char c;
            if (this.isCrossfadeBackground) {
                return null;
            }
            if (this.gradientShader == null && !this.isSelected && this.crossfadeFromDrawable == null) {
                return null;
            }
            int m50dp = AndroidUtilities.m50dp(SharedConfig.bubbleRadius);
            boolean z = this.isTopNear;
            boolean z2 = false;
            if (z && this.isBottomNear) {
                c = 3;
            } else if (z) {
                c = 2;
            } else {
                c = this.isBottomNear ? (char) 1 : (char) 0;
            }
            int[] iArr = this.currentShadowDrawableRadius;
            if (iArr[c] != m50dp) {
                iArr[c] = m50dp;
                Bitmap[] bitmapArr = this.shadowDrawableBitmap;
                if (bitmapArr[c] != null) {
                    bitmapArr[c].recycle();
                }
                try {
                    Bitmap createBitmap = Bitmap.createBitmap(m34dp(50.0f), m34dp(40.0f), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    Paint paint = new Paint(1);
                    paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m34dp(40.0f), new int[]{358573417, 694117737}, (float[]) null, Shader.TileMode.CLAMP));
                    paint.setShadowLayer(2.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, -1);
                    if (AndroidUtilities.density > 1.0f) {
                        setBounds(-1, -1, createBitmap.getWidth() + 1, createBitmap.getHeight() + 1);
                    } else {
                        setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                    }
                    draw(canvas, paint);
                    if (AndroidUtilities.density > 1.0f) {
                        paint.setColor(0);
                        paint.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                        setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                        draw(canvas, paint);
                    }
                    this.shadowDrawableBitmap[c] = createBitmap;
                    this.shadowDrawable[c] = new NinePatchDrawable(createBitmap, getByteBuffer((createBitmap.getWidth() / 2) - 1, (createBitmap.getWidth() / 2) + 1, (createBitmap.getHeight() / 2) - 1, (createBitmap.getHeight() / 2) + 1).array(), new Rect(), null);
                    z2 = true;
                } catch (Throwable unused) {
                }
            }
            int color = getColor(this.isOut ? "chat_outBubbleShadow" : "chat_inBubbleShadow");
            Drawable[] drawableArr = this.shadowDrawable;
            if (drawableArr[c] != null && (this.shadowDrawableColor[c] != color || z2)) {
                drawableArr[c].setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
                this.shadowDrawableColor[c] = color;
            }
            return this.shadowDrawable[c];
        }

        protected void finalize() throws Throwable {
            Bitmap[] bitmapArr;
            super.finalize();
            for (Bitmap bitmap : this.shadowDrawableBitmap) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
            Arrays.fill(this.shadowDrawableBitmap, (Object) null);
            Arrays.fill(this.shadowDrawable, (Object) null);
            Arrays.fill(this.currentShadowDrawableRadius, -1);
        }

        private static ByteBuffer getByteBuffer(int i, int i2, int i3, int i4) {
            ByteBuffer order = ByteBuffer.allocate(84).order(ByteOrder.nativeOrder());
            order.put((byte) 1);
            order.put((byte) 2);
            order.put((byte) 2);
            order.put((byte) 9);
            order.putInt(0);
            order.putInt(0);
            order.putInt(0);
            order.putInt(0);
            order.putInt(0);
            order.putInt(0);
            order.putInt(0);
            order.putInt(i);
            order.putInt(i2);
            order.putInt(i3);
            order.putInt(i4);
            order.putInt(1);
            order.putInt(1);
            order.putInt(1);
            order.putInt(1);
            order.putInt(1);
            order.putInt(1);
            order.putInt(1);
            order.putInt(1);
            order.putInt(1);
            return order;
        }

        public void drawCached(Canvas canvas, PathDrawParams pathDrawParams, Paint paint) {
            this.pathDrawCacheParams = pathDrawParams;
            MessageDrawable messageDrawable = this.crossfadeFromDrawable;
            if (messageDrawable != null) {
                messageDrawable.pathDrawCacheParams = pathDrawParams;
            }
            draw(canvas, paint);
            this.pathDrawCacheParams = null;
            MessageDrawable messageDrawable2 = this.crossfadeFromDrawable;
            if (messageDrawable2 != null) {
                messageDrawable2.pathDrawCacheParams = null;
            }
        }

        public void drawCached(Canvas canvas, PathDrawParams pathDrawParams) {
            drawCached(canvas, pathDrawParams, null);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            MessageDrawable messageDrawable = this.crossfadeFromDrawable;
            if (messageDrawable != null) {
                messageDrawable.draw(canvas);
                setAlpha((int) (this.crossfadeProgress * 255.0f));
                draw(canvas, null);
                setAlpha(255);
                return;
            }
            draw(canvas, null);
        }

        public void draw(Canvas canvas, Paint paint) {
            int m34dp;
            boolean z;
            boolean z2;
            Path path;
            boolean z3;
            int i;
            int color;
            Drawable backgroundDrawable;
            Rect bounds = getBounds();
            if (paint == null && this.gradientShader == null && this.overrideRoundRadius == 0 && this.overrideRounding <= BitmapDescriptorFactory.HUE_RED && (backgroundDrawable = getBackgroundDrawable()) != null) {
                backgroundDrawable.setBounds(bounds);
                backgroundDrawable.draw(canvas);
                return;
            }
            int m34dp2 = m34dp(2.0f);
            int i2 = this.overrideRoundRadius;
            if (i2 != 0) {
                m34dp = i2;
            } else if (this.overrideRounding > BitmapDescriptorFactory.HUE_RED) {
                i2 = AndroidUtilities.lerp(m34dp(SharedConfig.bubbleRadius), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
                m34dp = AndroidUtilities.lerp(m34dp(Math.min(6, SharedConfig.bubbleRadius)), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
            } else if (this.currentType == 2) {
                i2 = m34dp(6.0f);
                m34dp = m34dp(6.0f);
            } else {
                i2 = m34dp(SharedConfig.bubbleRadius);
                m34dp = m34dp(Math.min(6, SharedConfig.bubbleRadius));
            }
            int m34dp3 = m34dp(6.0f);
            Paint paint2 = paint == null ? this.paint : paint;
            if (paint == null && this.gradientShader != null) {
                this.matrix.reset();
                applyMatrixScale();
                this.matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, -this.topY);
                this.gradientShader.setLocalMatrix(this.matrix);
            }
            int max = Math.max(bounds.top, 0);
            if (this.pathDrawCacheParams == null || bounds.height() >= this.currentBackgroundHeight) {
                z = this.currentType != 1 ? (this.topY + bounds.bottom) - i2 < this.currentBackgroundHeight : (this.topY + bounds.bottom) - (m34dp3 * 2) < this.currentBackgroundHeight;
                z2 = this.topY + (i2 * 2) >= 0;
            } else {
                z = true;
                z2 = true;
            }
            PathDrawParams pathDrawParams = this.pathDrawCacheParams;
            if (pathDrawParams != null) {
                path = pathDrawParams.path;
                z3 = pathDrawParams.invalidatePath(bounds, z, z2);
            } else {
                path = this.path;
                z3 = true;
            }
            if (z3 || this.overrideRoundRadius != 0) {
                path.rewind();
                int height = (bounds.height() - m34dp2) >> 1;
                if (i2 > height) {
                    i2 = height;
                }
                if (this.isOut) {
                    if (this.drawFullBubble || this.currentType == 2 || paint != null || z) {
                        if (this.currentType == 1) {
                            path.moveTo((bounds.right - m34dp(8.0f)) - i2, bounds.bottom - m34dp2);
                        } else {
                            path.moveTo(bounds.right - m34dp(2.6f), bounds.bottom - m34dp2);
                        }
                        path.lineTo(bounds.left + m34dp2 + i2, bounds.bottom - m34dp2);
                        RectF rectF = this.rect;
                        int i3 = bounds.left;
                        int i4 = bounds.bottom;
                        int i5 = i2 * 2;
                        i = m34dp;
                        rectF.set(i3 + m34dp2, (i4 - m34dp2) - i5, i3 + m34dp2 + i5, i4 - m34dp2);
                        path.arcTo(this.rect, 90.0f, 90.0f, false);
                    } else {
                        path.moveTo(bounds.right - m34dp(8.0f), (max - this.topY) + this.currentBackgroundHeight);
                        path.lineTo(bounds.left + m34dp2, (max - this.topY) + this.currentBackgroundHeight);
                        i = m34dp;
                    }
                    if (this.drawFullBubble || this.currentType == 2 || paint != null || z2) {
                        path.lineTo(bounds.left + m34dp2, bounds.top + m34dp2 + i2);
                        RectF rectF2 = this.rect;
                        int i6 = bounds.left;
                        int i7 = bounds.top;
                        int i8 = i2 * 2;
                        rectF2.set(i6 + m34dp2, i7 + m34dp2, i6 + m34dp2 + i8, i7 + m34dp2 + i8);
                        path.arcTo(this.rect, 180.0f, 90.0f, false);
                        int i9 = this.isTopNear ? i : i2;
                        if (this.currentType == 1) {
                            path.lineTo((bounds.right - m34dp2) - i9, bounds.top + m34dp2);
                            RectF rectF3 = this.rect;
                            int i10 = bounds.right;
                            int i11 = i9 * 2;
                            int i12 = bounds.top;
                            rectF3.set((i10 - m34dp2) - i11, i12 + m34dp2, i10 - m34dp2, i12 + m34dp2 + i11);
                        } else {
                            path.lineTo((bounds.right - m34dp(8.0f)) - i9, bounds.top + m34dp2);
                            int i13 = i9 * 2;
                            this.rect.set((bounds.right - m34dp(8.0f)) - i13, bounds.top + m34dp2, bounds.right - m34dp(8.0f), bounds.top + m34dp2 + i13);
                        }
                        path.arcTo(this.rect, 270.0f, 90.0f, false);
                    } else {
                        path.lineTo(bounds.left + m34dp2, (max - this.topY) - m34dp(2.0f));
                        if (this.currentType == 1) {
                            path.lineTo(bounds.right - m34dp2, (max - this.topY) - m34dp(2.0f));
                        } else {
                            path.lineTo(bounds.right - m34dp(8.0f), (max - this.topY) - m34dp(2.0f));
                        }
                    }
                    int i14 = this.currentType;
                    if (i14 == 1) {
                        if (paint != null || z) {
                            int i15 = this.isBottomNear ? i : i2;
                            path.lineTo(bounds.right - m34dp2, (bounds.bottom - m34dp2) - i15);
                            RectF rectF4 = this.rect;
                            int i16 = bounds.right;
                            int i17 = i15 * 2;
                            int i18 = bounds.bottom;
                            rectF4.set((i16 - m34dp2) - i17, (i18 - m34dp2) - i17, i16 - m34dp2, i18 - m34dp2);
                            path.arcTo(this.rect, BitmapDescriptorFactory.HUE_RED, 90.0f, false);
                        } else {
                            path.lineTo(bounds.right - m34dp2, (max - this.topY) + this.currentBackgroundHeight);
                        }
                    } else if (this.drawFullBubble || i14 == 2 || paint != null || z) {
                        path.lineTo(bounds.right - m34dp(8.0f), ((bounds.bottom - m34dp2) - m34dp3) - m34dp(3.0f));
                        int i19 = m34dp3 * 2;
                        this.rect.set(bounds.right - m34dp(8.0f), ((bounds.bottom - m34dp2) - i19) - m34dp(9.0f), (bounds.right - m34dp(7.0f)) + i19, (bounds.bottom - m34dp2) - m34dp(1.0f));
                        path.arcTo(this.rect, 180.0f, -83.0f, false);
                    } else {
                        path.lineTo(bounds.right - m34dp(8.0f), (max - this.topY) + this.currentBackgroundHeight);
                    }
                } else {
                    int i20 = m34dp;
                    if (this.drawFullBubble || this.currentType == 2 || paint != null || z) {
                        if (this.currentType == 1) {
                            path.moveTo(bounds.left + m34dp(8.0f) + i2, bounds.bottom - m34dp2);
                        } else {
                            path.moveTo(bounds.left + m34dp(2.6f), bounds.bottom - m34dp2);
                        }
                        path.lineTo((bounds.right - m34dp2) - i2, bounds.bottom - m34dp2);
                        RectF rectF5 = this.rect;
                        int i21 = bounds.right;
                        int i22 = i2 * 2;
                        int i23 = bounds.bottom;
                        rectF5.set((i21 - m34dp2) - i22, (i23 - m34dp2) - i22, i21 - m34dp2, i23 - m34dp2);
                        path.arcTo(this.rect, 90.0f, -90.0f, false);
                    } else {
                        path.moveTo(bounds.left + m34dp(8.0f), (max - this.topY) + this.currentBackgroundHeight);
                        path.lineTo(bounds.right - m34dp2, (max - this.topY) + this.currentBackgroundHeight);
                    }
                    if (this.drawFullBubble || this.currentType == 2 || paint != null || z2) {
                        path.lineTo(bounds.right - m34dp2, bounds.top + m34dp2 + i2);
                        RectF rectF6 = this.rect;
                        int i24 = bounds.right;
                        int i25 = i2 * 2;
                        int i26 = bounds.top;
                        rectF6.set((i24 - m34dp2) - i25, i26 + m34dp2, i24 - m34dp2, i26 + m34dp2 + i25);
                        path.arcTo(this.rect, BitmapDescriptorFactory.HUE_RED, -90.0f, false);
                        int i27 = this.isTopNear ? i20 : i2;
                        if (this.currentType == 1) {
                            path.lineTo(bounds.left + m34dp2 + i27, bounds.top + m34dp2);
                            RectF rectF7 = this.rect;
                            int i28 = bounds.left;
                            int i29 = bounds.top;
                            int i30 = i27 * 2;
                            rectF7.set(i28 + m34dp2, i29 + m34dp2, i28 + m34dp2 + i30, i29 + m34dp2 + i30);
                        } else {
                            path.lineTo(bounds.left + m34dp(8.0f) + i27, bounds.top + m34dp2);
                            int i31 = i27 * 2;
                            this.rect.set(bounds.left + m34dp(8.0f), bounds.top + m34dp2, bounds.left + m34dp(8.0f) + i31, bounds.top + m34dp2 + i31);
                        }
                        path.arcTo(this.rect, 270.0f, -90.0f, false);
                    } else {
                        path.lineTo(bounds.right - m34dp2, (max - this.topY) - m34dp(2.0f));
                        if (this.currentType == 1) {
                            path.lineTo(bounds.left + m34dp2, (max - this.topY) - m34dp(2.0f));
                        } else {
                            path.lineTo(bounds.left + m34dp(8.0f), (max - this.topY) - m34dp(2.0f));
                        }
                    }
                    int i32 = this.currentType;
                    if (i32 == 1) {
                        if (paint != null || z) {
                            int i33 = this.isBottomNear ? i20 : i2;
                            path.lineTo(bounds.left + m34dp2, (bounds.bottom - m34dp2) - i33);
                            RectF rectF8 = this.rect;
                            int i34 = bounds.left;
                            int i35 = bounds.bottom;
                            int i36 = i33 * 2;
                            rectF8.set(i34 + m34dp2, (i35 - m34dp2) - i36, i34 + m34dp2 + i36, i35 - m34dp2);
                            path.arcTo(this.rect, 180.0f, -90.0f, false);
                        } else {
                            path.lineTo(bounds.left + m34dp2, (max - this.topY) + this.currentBackgroundHeight);
                        }
                    } else if (this.drawFullBubble || i32 == 2 || paint != null || z) {
                        path.lineTo(bounds.left + m34dp(8.0f), ((bounds.bottom - m34dp2) - m34dp3) - m34dp(3.0f));
                        int i37 = m34dp3 * 2;
                        this.rect.set((bounds.left + m34dp(7.0f)) - i37, ((bounds.bottom - m34dp2) - i37) - m34dp(9.0f), bounds.left + m34dp(8.0f), (bounds.bottom - m34dp2) - m34dp(1.0f));
                        path.arcTo(this.rect, BitmapDescriptorFactory.HUE_RED, 83.0f, false);
                    } else {
                        path.lineTo(bounds.left + m34dp(8.0f), (max - this.topY) + this.currentBackgroundHeight);
                    }
                }
                path.close();
            }
            canvas.drawPath(path, paint2);
            if (this.gradientShader != null && this.isSelected && paint == null) {
                this.selectedPaint.setColor(ColorUtils.setAlphaComponent(getColor("chat_outBubbleGradientSelectedOverlay"), (int) ((Color.alpha(color) * this.alpha) / 255.0f)));
                canvas.drawPath(path, this.selectedPaint);
            }
        }

        public void setDrawFullBubble(boolean z) {
            this.drawFullBubble = z;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            if (this.alpha != i) {
                this.alpha = i;
                this.paint.setAlpha(i);
                if (this.isOut) {
                    this.selectedPaint.setAlpha((int) (Color.alpha(getColor("chat_outBubbleGradientSelectedOverlay")) * (i / 255.0f)));
                }
            }
            if (this.gradientShader == null) {
                Drawable backgroundDrawable = getBackgroundDrawable();
                if (Build.VERSION.SDK_INT >= 19) {
                    if (backgroundDrawable.getAlpha() != i) {
                        backgroundDrawable.setAlpha(i);
                        return;
                    }
                    return;
                }
                backgroundDrawable.setAlpha(i);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i, int i2, int i3, int i4) {
            super.setBounds(i, i2, i3, i4);
            MessageDrawable messageDrawable = this.crossfadeFromDrawable;
            if (messageDrawable != null) {
                messageDrawable.setBounds(i, i2, i3, i4);
            }
        }

        public void setRoundRadius(int i) {
            this.overrideRoundRadius = i;
        }

        public void setRoundingRadius(float f) {
            this.overrideRounding = f;
        }

        /* renamed from: org.telegram.ui.ActionBar.Theme$MessageDrawable$PathDrawParams */
        /* loaded from: classes5.dex */
        public static class PathDrawParams {
            boolean lastDrawFullBottom;
            boolean lastDrawFullTop;
            Path path = new Path();
            Rect lastRect = new Rect();

            public boolean invalidatePath(Rect rect, boolean z, boolean z2) {
                boolean z3;
                if (!this.lastRect.isEmpty()) {
                    Rect rect2 = this.lastRect;
                    if (rect2.top == rect.top && rect2.bottom == rect.bottom && rect2.right == rect.right && rect2.left == rect.left && this.lastDrawFullTop == z2 && this.lastDrawFullBottom == z && z2 && z) {
                        z3 = false;
                        this.lastDrawFullTop = z2;
                        this.lastDrawFullBottom = z;
                        this.lastRect.set(rect);
                        return z3;
                    }
                }
                z3 = true;
                this.lastDrawFullTop = z2;
                this.lastDrawFullBottom = z;
                this.lastRect.set(rect);
                return z3;
            }

            public Path getPath() {
                return this.path;
            }
        }
    }

    /* renamed from: org.telegram.ui.ActionBar.Theme$PatternsLoader */
    /* loaded from: classes5.dex */
    public static class PatternsLoader implements NotificationCenter.NotificationCenterDelegate {
        private static PatternsLoader loader;
        private int account = UserConfig.selectedAccount;
        private HashMap<String, LoadingPattern> watingForLoad;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.ActionBar.Theme$PatternsLoader$LoadingPattern */
        /* loaded from: classes5.dex */
        public static class LoadingPattern {
            public ArrayList<ThemeAccent> accents;
            public TLRPC$TL_wallPaper pattern;

            private LoadingPattern() {
                this.accents = new ArrayList<>();
            }
        }

        public static void createLoader(boolean z) {
            ArrayList<ThemeAccent> arrayList;
            if (loader == null || z) {
                ArrayList arrayList2 = null;
                int i = 0;
                while (i < 5) {
                    ThemeInfo themeInfo = (ThemeInfo) Theme.themesDict.get(i != 0 ? i != 1 ? i != 2 ? i != 3 ? "Night" : "Day" : "Arctic Blue" : "Dark Blue" : "Blue");
                    if (themeInfo != null && (arrayList = themeInfo.themeAccents) != null && !arrayList.isEmpty()) {
                        int size = themeInfo.themeAccents.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            ThemeAccent themeAccent = themeInfo.themeAccents.get(i2);
                            if (themeAccent.f1656id != Theme.DEFALT_THEME_ACCENT_ID && !TextUtils.isEmpty(themeAccent.patternSlug)) {
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(themeAccent);
                            }
                        }
                    }
                    i++;
                }
                loader = new PatternsLoader(arrayList2);
            }
        }

        private PatternsLoader(final ArrayList<ThemeAccent> arrayList) {
            if (arrayList == null) {
                return;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$PatternsLoader$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Theme.PatternsLoader.this.lambda$new$1(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(final ArrayList arrayList) {
            int size = arrayList.size();
            ArrayList arrayList2 = null;
            int i = 0;
            while (i < size) {
                ThemeAccent themeAccent = (ThemeAccent) arrayList.get(i);
                File pathToWallpaper = themeAccent.getPathToWallpaper();
                if (pathToWallpaper != null && pathToWallpaper.exists()) {
                    arrayList.remove(i);
                    i--;
                    size--;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    if (!arrayList2.contains(themeAccent.patternSlug)) {
                        arrayList2.add(themeAccent.patternSlug);
                    }
                }
                i++;
            }
            if (arrayList2 == null) {
                return;
            }
            TLRPC$TL_account_getMultiWallPapers tLRPC$TL_account_getMultiWallPapers = new TLRPC$TL_account_getMultiWallPapers();
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                TLRPC$TL_inputWallPaperSlug tLRPC$TL_inputWallPaperSlug = new TLRPC$TL_inputWallPaperSlug();
                tLRPC$TL_inputWallPaperSlug.slug = (String) arrayList2.get(i2);
                tLRPC$TL_account_getMultiWallPapers.wallpapers.add(tLRPC$TL_inputWallPaperSlug);
            }
            ConnectionsManager.getInstance(this.account).sendRequest(tLRPC$TL_account_getMultiWallPapers, new RequestDelegate() { // from class: org.telegram.ui.ActionBar.Theme$PatternsLoader$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    Theme.PatternsLoader.this.lambda$new$0(arrayList, tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v2 */
        public /* synthetic */ void lambda$new$0(ArrayList arrayList, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            if (tLObject instanceof TLRPC$Vector) {
                TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
                int size = tLRPC$Vector.objects.size();
                Bitmap bitmap = null;
                ArrayList<ThemeAccent> arrayList2 = null;
                int i = 0;
                while (i < size) {
                    TLRPC$WallPaper tLRPC$WallPaper = (TLRPC$WallPaper) tLRPC$Vector.objects.get(i);
                    if (tLRPC$WallPaper instanceof TLRPC$TL_wallPaper) {
                        TLRPC$TL_wallPaper tLRPC$TL_wallPaper = (TLRPC$TL_wallPaper) tLRPC$WallPaper;
                        if (tLRPC$TL_wallPaper.pattern) {
                            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tLRPC$TL_wallPaper.document, true);
                            int size2 = arrayList.size();
                            Bitmap bitmap2 = bitmap;
                            Boolean bool = bitmap2;
                            int i2 = 0;
                            RunnableC34561 runnableC34561 = bitmap;
                            while (i2 < size2) {
                                ThemeAccent themeAccent = (ThemeAccent) arrayList.get(i2);
                                bool = bool;
                                if (themeAccent.patternSlug.equals(tLRPC$TL_wallPaper.slug)) {
                                    if (bool == 0) {
                                        bool = Boolean.valueOf(pathToAttach.exists());
                                    }
                                    if (bitmap2 != null || bool.booleanValue()) {
                                        bitmap2 = createWallpaperForAccent(bitmap2, "application/x-tgwallpattern".equals(tLRPC$TL_wallPaper.document.mime_type), pathToAttach, themeAccent);
                                        if (arrayList2 == null) {
                                            arrayList2 = new ArrayList<>();
                                        }
                                        arrayList2.add(themeAccent);
                                    } else {
                                        String attachFileName = FileLoader.getAttachFileName(tLRPC$TL_wallPaper.document);
                                        if (this.watingForLoad == null) {
                                            this.watingForLoad = new HashMap<>();
                                        }
                                        LoadingPattern loadingPattern = this.watingForLoad.get(attachFileName);
                                        if (loadingPattern == null) {
                                            loadingPattern = new LoadingPattern();
                                            loadingPattern.pattern = tLRPC$TL_wallPaper;
                                            this.watingForLoad.put(attachFileName, loadingPattern);
                                        }
                                        loadingPattern.accents.add(themeAccent);
                                    }
                                }
                                i2++;
                                runnableC34561 = 0;
                                bool = bool;
                            }
                            if (bitmap2 != null) {
                                bitmap2.recycle();
                            }
                            i++;
                            bitmap = null;
                        }
                    }
                    i++;
                    bitmap = null;
                }
                checkCurrentWallpaper(arrayList2, true);
            }
        }

        private void checkCurrentWallpaper(final ArrayList<ThemeAccent> arrayList, final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$PatternsLoader$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Theme.PatternsLoader.this.lambda$checkCurrentWallpaper$2(arrayList, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: checkCurrentWallpaperInternal */
        public void lambda$checkCurrentWallpaper$2(ArrayList<ThemeAccent> arrayList, boolean z) {
            if (arrayList != null && Theme.currentTheme.themeAccents != null && !Theme.currentTheme.themeAccents.isEmpty() && arrayList.contains(Theme.currentTheme.getAccent(false))) {
                Theme.reloadWallpaper();
            }
            if (z) {
                if (this.watingForLoad != null) {
                    NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoaded);
                    NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoadFailed);
                    for (Map.Entry<String, LoadingPattern> entry : this.watingForLoad.entrySet()) {
                        FileLoader.getInstance(this.account).loadFile(ImageLocation.getForDocument(entry.getValue().pattern.document), "wallpaper", null, 0, 1);
                    }
                    return;
                }
                return;
            }
            HashMap<String, LoadingPattern> hashMap = this.watingForLoad;
            if (hashMap == null || hashMap.isEmpty()) {
                NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.fileLoaded);
                NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.fileLoadFailed);
            }
        }

        private Bitmap createWallpaperForAccent(Bitmap bitmap, boolean z, File file, ThemeAccent themeAccent) {
            Bitmap bitmap2;
            File pathToWallpaper;
            Drawable drawable;
            int patternColor;
            Bitmap loadScreenSizedBitmap;
            Integer num;
            Integer num2;
            Integer num3;
            try {
                pathToWallpaper = themeAccent.getPathToWallpaper();
                drawable = null;
            } catch (Throwable th) {
                th = th;
                bitmap2 = bitmap;
            }
            if (pathToWallpaper == null) {
                return null;
            }
            ThemeInfo themeInfo = themeAccent.parentTheme;
            HashMap<String, Integer> themeFileValues = Theme.getThemeFileValues(null, themeInfo.assetName, null);
            Theme.checkIsDark(themeFileValues, themeInfo);
            int i = themeAccent.accentColor;
            int i2 = (int) themeAccent.backgroundOverrideColor;
            long j = themeAccent.backgroundGradientOverrideColor1;
            int i3 = (int) j;
            if (i3 == 0 && j == 0) {
                if (i2 != 0) {
                    i = i2;
                }
                Integer num4 = themeFileValues.get("chat_wallpaper_gradient_to");
                if (num4 != null) {
                    i3 = Theme.changeColorAccent(themeInfo, i, num4.intValue());
                }
            } else {
                i = 0;
            }
            long j2 = themeAccent.backgroundGradientOverrideColor2;
            int i4 = (int) j2;
            if (i4 == 0 && j2 == 0 && (num3 = themeFileValues.get("key_chat_wallpaper_gradient_to2")) != null) {
                i4 = Theme.changeColorAccent(themeInfo, i, num3.intValue());
            }
            long j3 = themeAccent.backgroundGradientOverrideColor3;
            int i5 = (int) j3;
            if (i5 == 0 && j3 == 0 && (num2 = themeFileValues.get("key_chat_wallpaper_gradient_to3")) != null) {
                i5 = Theme.changeColorAccent(themeInfo, i, num2.intValue());
            }
            if (i2 == 0 && (num = themeFileValues.get("chat_wallpaper")) != null) {
                i2 = Theme.changeColorAccent(themeInfo, i, num.intValue());
            }
            if (i4 != 0) {
                patternColor = MotionBackgroundDrawable.getPatternColor(i2, i3, i4, i5);
            } else if (i3 != 0) {
                Drawable backgroundGradientDrawable = new BackgroundGradientDrawable(BackgroundGradientDrawable.getGradientOrientation(themeAccent.backgroundRotation), new int[]{i2, i3});
                patternColor = AndroidUtilities.getPatternColor(AndroidUtilities.getAverageColor(i2, i3));
                drawable = backgroundGradientDrawable;
            } else {
                drawable = new ColorDrawable(i2);
                patternColor = AndroidUtilities.getPatternColor(i2);
            }
            if (bitmap == null) {
                Point point = AndroidUtilities.displaySize;
                int min = Math.min(point.x, point.y);
                Point point2 = AndroidUtilities.displaySize;
                int max = Math.max(point2.x, point2.y);
                if (!z) {
                    loadScreenSizedBitmap = Theme.loadScreenSizedBitmap(new FileInputStream(file), 0);
                } else {
                    loadScreenSizedBitmap = SvgHelper.getBitmap(file, min, max, false);
                }
                bitmap2 = loadScreenSizedBitmap;
            } else {
                bitmap2 = bitmap;
            }
            try {
                if (drawable != null) {
                    Bitmap createBitmap = Bitmap.createBitmap(bitmap2.getWidth(), bitmap2.getHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    drawable.setBounds(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
                    drawable.draw(canvas);
                    Paint paint = new Paint(2);
                    paint.setColorFilter(new PorterDuffColorFilter(patternColor, PorterDuff.Mode.SRC_IN));
                    paint.setAlpha((int) (Math.abs(themeAccent.patternIntensity) * 255.0f));
                    canvas.drawBitmap(bitmap2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                    createBitmap.compress(Bitmap.CompressFormat.JPEG, 87, new FileOutputStream(pathToWallpaper));
                } else {
                    FileOutputStream fileOutputStream = new FileOutputStream(pathToWallpaper);
                    bitmap2.compress(Bitmap.CompressFormat.PNG, 87, fileOutputStream);
                    fileOutputStream.close();
                }
            } catch (Throwable th2) {
                th = th2;
                FileLog.m45e(th);
                return bitmap2;
            }
            return bitmap2;
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            HashMap<String, LoadingPattern> hashMap = this.watingForLoad;
            if (hashMap == null) {
                return;
            }
            if (i == NotificationCenter.fileLoaded) {
                final LoadingPattern remove = hashMap.remove((String) objArr[0]);
                if (remove != null) {
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$PatternsLoader$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            Theme.PatternsLoader.this.lambda$didReceivedNotification$3(remove);
                        }
                    });
                }
            } else if (i != NotificationCenter.fileLoadFailed || hashMap.remove((String) objArr[0]) == null) {
            } else {
                checkCurrentWallpaper(null, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$3(LoadingPattern loadingPattern) {
            TLRPC$TL_wallPaper tLRPC$TL_wallPaper = loadingPattern.pattern;
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tLRPC$TL_wallPaper.document, true);
            int size = loadingPattern.accents.size();
            Bitmap bitmap = null;
            ArrayList<ThemeAccent> arrayList = null;
            for (int i = 0; i < size; i++) {
                ThemeAccent themeAccent = loadingPattern.accents.get(i);
                if (themeAccent.patternSlug.equals(tLRPC$TL_wallPaper.slug)) {
                    bitmap = createWallpaperForAccent(bitmap, "application/x-tgwallpattern".equals(tLRPC$TL_wallPaper.document.mime_type), pathToAttach, themeAccent);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        arrayList.add(themeAccent);
                    }
                }
            }
            if (bitmap != null) {
                bitmap.recycle();
            }
            checkCurrentWallpaper(arrayList, false);
        }
    }

    /* renamed from: org.telegram.ui.ActionBar.Theme$ThemeAccent */
    /* loaded from: classes5.dex */
    public static class ThemeAccent {
        public int accentColor;
        public int accentColor2;
        public int account;
        public long backgroundGradientOverrideColor1;
        public long backgroundGradientOverrideColor2;
        public long backgroundGradientOverrideColor3;
        public long backgroundOverrideColor;

        /* renamed from: id */
        public int f1656id;
        public TLRPC$TL_theme info;
        public boolean isDefault;
        public int myMessagesAccentColor;
        public boolean myMessagesAnimated;
        public int myMessagesGradientAccentColor1;
        public int myMessagesGradientAccentColor2;
        public int myMessagesGradientAccentColor3;
        public OverrideWallpaperInfo overrideWallpaper;
        public ThemeInfo parentTheme;
        public TLRPC$TL_wallPaper pattern;
        public float patternIntensity;
        public boolean patternMotion;
        public TLRPC$InputFile uploadedFile;
        public TLRPC$InputFile uploadedThumb;
        public String uploadingFile;
        public String uploadingThumb;
        public int backgroundRotation = 45;
        public String patternSlug = "";
        private float[] tempHSV = new float[3];

        ThemeAccent() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0082, code lost:
            r9 = (java.lang.Integer) org.telegram.p048ui.ActionBar.Theme.defaultColors.get(r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x01d1, code lost:
            r11 = (java.lang.Integer) org.telegram.p048ui.ActionBar.Theme.defaultColors.get(r7);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean fillAccentColors(java.util.HashMap<java.lang.String, java.lang.Integer> r17, java.util.HashMap<java.lang.String, java.lang.Integer> r18) {
            /*
                Method dump skipped, instructions count: 1679
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.ThemeAccent.fillAccentColors(java.util.HashMap, java.util.HashMap):boolean");
        }

        private float getHue(int i) {
            Color.colorToHSV(i, this.tempHSV);
            return this.tempHSV[0];
        }

        private int bubbleSelectedOverlay(int i, int i2) {
            Color.colorToHSV(i2, this.tempHSV);
            float[] fArr = this.tempHSV;
            float f = fArr[0];
            Color.colorToHSV(i, fArr);
            float[] fArr2 = this.tempHSV;
            if (fArr2[1] <= BitmapDescriptorFactory.HUE_RED) {
                fArr2[0] = f;
            }
            fArr2[1] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, fArr2[1] + 0.6f));
            float[] fArr3 = this.tempHSV;
            fArr3[2] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, fArr3[2] - 0.05f));
            return Color.HSVToColor(30, this.tempHSV);
        }

        private int textSelectionBackground(boolean z, int i, int i2) {
            Color.colorToHSV(i2, this.tempHSV);
            float[] fArr = this.tempHSV;
            float f = fArr[0];
            Color.colorToHSV(i, fArr);
            float[] fArr2 = this.tempHSV;
            if (fArr2[1] <= BitmapDescriptorFactory.HUE_RED || (fArr2[0] > 45.0f && fArr2[0] < 85.0f)) {
                fArr2[0] = f;
            }
            fArr2[1] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, fArr2[1] + (fArr2[2] > 0.85f ? 0.25f : 0.45f)));
            float[] fArr3 = this.tempHSV;
            fArr3[2] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, fArr3[2] - 0.15f));
            return Color.HSVToColor(80, this.tempHSV);
        }

        private int textSelectionHandle(int i, int i2) {
            Color.colorToHSV(i2, this.tempHSV);
            float[] fArr = this.tempHSV;
            float f = fArr[0];
            Color.colorToHSV(i, fArr);
            float[] fArr2 = this.tempHSV;
            if (fArr2[1] <= BitmapDescriptorFactory.HUE_RED || (fArr2[0] > 45.0f && fArr2[0] < 85.0f)) {
                fArr2[0] = f;
            }
            fArr2[1] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, fArr2[1] + 0.6f));
            float[] fArr3 = this.tempHSV;
            fArr3[2] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, fArr3[2] - (fArr3[2] > 0.7f ? 0.25f : 0.125f)));
            return Theme.blendOver(i, Color.HSVToColor(255, this.tempHSV));
        }

        private int linkSelectionBackground(int i, int i2, boolean z) {
            Color.colorToHSV(ColorUtils.blendARGB(i, i2, 0.25f), this.tempHSV);
            float[] fArr = this.tempHSV;
            fArr[1] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, fArr[1] - 0.1f));
            float[] fArr2 = this.tempHSV;
            fArr2[2] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, fArr2[2] + (z ? 0.1f : 0.0f)));
            return Color.HSVToColor(51, this.tempHSV);
        }

        private int locationPlaceholderColor(float f, int i, boolean z) {
            if (z) {
                return 520093695;
            }
            Color.colorToHSV(i, this.tempHSV);
            float[] fArr = this.tempHSV;
            if (fArr[1] <= BitmapDescriptorFactory.HUE_RED || fArr[2] >= 1.0f || fArr[2] <= BitmapDescriptorFactory.HUE_RED) {
                fArr[0] = f;
                fArr[1] = 0.2f;
            } else {
                fArr[0] = MathUtils.clamp(fArr[0] + 0.22f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                float[] fArr2 = this.tempHSV;
                fArr2[1] = MathUtils.clamp(fArr2[1] - 0.35f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            }
            float[] fArr3 = this.tempHSV;
            fArr3[2] = MathUtils.clamp(fArr3[2] - 0.65f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            return Color.HSVToColor(90, this.tempHSV);
        }

        private int averageColor(HashMap<String, Integer> hashMap, String... strArr) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < strArr.length; i5++) {
                if (hashMap.containsKey(strArr[i5])) {
                    try {
                        int intValue = hashMap.get(strArr[i5]).intValue();
                        i2 += Color.red(intValue);
                        i3 += Color.green(intValue);
                        i4 += Color.blue(intValue);
                        i++;
                    } catch (Exception unused) {
                    }
                }
            }
            if (i == 0) {
                return 0;
            }
            return Color.argb(255, i2 / i, i3 / i, i4 / i);
        }

        public File getPathToWallpaper() {
            if (this.f1656id < 100) {
                if (TextUtils.isEmpty(this.patternSlug)) {
                    return null;
                }
                return new File(ApplicationLoader.getFilesDirFixed(), String.format(Locale.US, "%s_%d_%s_v5.jpg", this.parentTheme.getKey(), Integer.valueOf(this.f1656id), this.patternSlug));
            } else if (TextUtils.isEmpty(this.patternSlug)) {
                return null;
            } else {
                return new File(ApplicationLoader.getFilesDirFixed(), String.format(Locale.US, "%s_%d_%s_v8_debug.jpg", this.parentTheme.getKey(), Integer.valueOf(this.f1656id), this.patternSlug));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:94:0x02f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x02ea -> B:91:0x02ee). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.io.File saveToFile() {
            /*
                Method dump skipped, instructions count: 765
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.ThemeAccent.saveToFile():java.io.File");
        }
    }

    public static int blendOver(int i, int i2) {
        float alpha = Color.alpha(i2) / 255.0f;
        float alpha2 = Color.alpha(i) / 255.0f;
        float f = 1.0f - alpha;
        float f2 = (alpha2 * f) + alpha;
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return Color.argb((int) (255.0f * f2), (int) (((Color.red(i2) * alpha) + ((Color.red(i) * alpha2) * f)) / f2), (int) (((Color.green(i2) * alpha) + ((Color.green(i) * alpha2) * f)) / f2), (int) (((Color.blue(i2) * alpha) + ((Color.blue(i) * alpha2) * f)) / f2));
    }

    public static int adaptHue(int i, int i2) {
        float[] tempHsv = getTempHsv(5);
        Color.colorToHSV(i2, tempHsv);
        float f = tempHsv[0];
        float f2 = tempHsv[1];
        Color.colorToHSV(i, tempHsv);
        tempHsv[0] = f;
        tempHsv[1] = AndroidUtilities.lerp(tempHsv[1], f2, 0.25f);
        return Color.HSVToColor(Color.alpha(i), tempHsv);
    }

    public static int adaptHSV(int i, float f, float f2) {
        float[] tempHsv = getTempHsv(5);
        Color.colorToHSV(i, tempHsv);
        tempHsv[1] = MathUtils.clamp(tempHsv[1] + f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        tempHsv[2] = MathUtils.clamp(tempHsv[2] + f2, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        return Color.HSVToColor(Color.alpha(i), tempHsv);
    }

    public static int percentSV(int i, int i2, float f, float f2) {
        float[] tempHsv = getTempHsv(5);
        Color.colorToHSV(i2, tempHsv);
        float f3 = tempHsv[1];
        float f4 = tempHsv[2];
        Color.colorToHSV(i, tempHsv);
        tempHsv[1] = MathUtils.clamp(AndroidUtilities.lerp(tempHsv[1], f3, f), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        tempHsv[2] = MathUtils.clamp(AndroidUtilities.lerp(tempHsv[2], f4, f2), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        return Color.HSVToColor(AndroidUtilities.lerp(Color.alpha(i), Color.alpha(i2), 0.85f), tempHsv);
    }

    public static int multAlpha(int i, float f) {
        return ColorUtils.setAlphaComponent(i, MathUtils.clamp((int) (Color.alpha(i) * f), 0, 255));
    }

    /* renamed from: org.telegram.ui.ActionBar.Theme$OverrideWallpaperInfo */
    /* loaded from: classes5.dex */
    public static class OverrideWallpaperInfo {
        public long accessHash;
        public int color;
        public String fileName;
        public int gradientColor1;
        public int gradientColor2;
        public int gradientColor3;
        public float intensity;
        public boolean isBlurred;
        public boolean isMotion;
        public String originalFileName;
        public ThemeAccent parentAccent;
        public ThemeInfo parentTheme;
        public int rotation;
        public String slug;
        public long wallpaperId;

        public OverrideWallpaperInfo() {
            this.fileName = "";
            this.originalFileName = "";
            this.slug = "";
        }

        public OverrideWallpaperInfo(OverrideWallpaperInfo overrideWallpaperInfo, ThemeInfo themeInfo, ThemeAccent themeAccent) {
            this.fileName = "";
            this.originalFileName = "";
            this.slug = "";
            this.slug = overrideWallpaperInfo.slug;
            this.color = overrideWallpaperInfo.color;
            this.gradientColor1 = overrideWallpaperInfo.gradientColor1;
            this.gradientColor2 = overrideWallpaperInfo.gradientColor2;
            this.gradientColor3 = overrideWallpaperInfo.gradientColor3;
            this.rotation = overrideWallpaperInfo.rotation;
            this.isBlurred = overrideWallpaperInfo.isBlurred;
            this.isMotion = overrideWallpaperInfo.isMotion;
            this.intensity = overrideWallpaperInfo.intensity;
            this.parentTheme = themeInfo;
            this.parentAccent = themeAccent;
            if (!TextUtils.isEmpty(overrideWallpaperInfo.fileName)) {
                try {
                    File file = new File(ApplicationLoader.getFilesDirFixed(), overrideWallpaperInfo.fileName);
                    File filesDirFixed = ApplicationLoader.getFilesDirFixed();
                    String generateWallpaperName = this.parentTheme.generateWallpaperName(this.parentAccent, false);
                    this.fileName = generateWallpaperName;
                    AndroidUtilities.copyFile(file, new File(filesDirFixed, generateWallpaperName));
                } catch (Exception e) {
                    this.fileName = "";
                    FileLog.m45e(e);
                }
            } else {
                this.fileName = "";
            }
            if (!TextUtils.isEmpty(overrideWallpaperInfo.originalFileName)) {
                if (!overrideWallpaperInfo.originalFileName.equals(overrideWallpaperInfo.fileName)) {
                    try {
                        File file2 = new File(ApplicationLoader.getFilesDirFixed(), overrideWallpaperInfo.originalFileName);
                        File filesDirFixed2 = ApplicationLoader.getFilesDirFixed();
                        String generateWallpaperName2 = this.parentTheme.generateWallpaperName(this.parentAccent, true);
                        this.originalFileName = generateWallpaperName2;
                        AndroidUtilities.copyFile(file2, new File(filesDirFixed2, generateWallpaperName2));
                        return;
                    } catch (Exception e2) {
                        this.originalFileName = "";
                        FileLog.m45e(e2);
                        return;
                    }
                }
                this.originalFileName = this.fileName;
                return;
            }
            this.originalFileName = "";
        }

        public boolean isDefault() {
            return "d".equals(this.slug);
        }

        public boolean isColor() {
            return "c".equals(this.slug);
        }

        public boolean isTheme() {
            return "t".equals(this.slug);
        }

        public void saveOverrideWallpaper() {
            ThemeInfo themeInfo = this.parentTheme;
            if (themeInfo != null) {
                ThemeAccent themeAccent = this.parentAccent;
                if (themeAccent != null || themeInfo.overrideWallpaper == this) {
                    if (themeAccent == null || themeAccent.overrideWallpaper == this) {
                        save();
                    }
                }
            }
        }

        private String getKey() {
            if (this.parentAccent != null) {
                return this.parentTheme.name + "_" + this.parentAccent.f1656id + "_owp";
            }
            return this.parentTheme.name + "_owp";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void save() {
            try {
                String key = getKey();
                SharedPreferences.Editor edit = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("wall", this.fileName);
                jSONObject.put("owall", this.originalFileName);
                jSONObject.put("pColor", this.color);
                jSONObject.put("pGrColor", this.gradientColor1);
                jSONObject.put("pGrColor2", this.gradientColor2);
                jSONObject.put("pGrColor3", this.gradientColor3);
                jSONObject.put("pGrAngle", this.rotation);
                String str = this.slug;
                if (str == null) {
                    str = "";
                }
                jSONObject.put("wallSlug", str);
                jSONObject.put("wBlur", this.isBlurred);
                jSONObject.put("wMotion", this.isMotion);
                jSONObject.put("pIntensity", this.intensity);
                edit.putString(key, jSONObject.toString());
                edit.commit();
            } catch (Throwable th) {
                FileLog.m45e(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void delete() {
            ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit().remove(getKey()).commit();
            new File(ApplicationLoader.getFilesDirFixed(), this.fileName).delete();
            new File(ApplicationLoader.getFilesDirFixed(), this.originalFileName).delete();
        }
    }

    /* renamed from: org.telegram.ui.ActionBar.Theme$ThemeInfo */
    /* loaded from: classes5.dex */
    public static class ThemeInfo implements NotificationCenter.NotificationCenterDelegate {
        public int accentBaseColor;
        public LongSparseArray<ThemeAccent> accentsByThemeId;
        public int account;
        public String assetName;
        public boolean badWallpaper;
        public LongSparseArray<ThemeAccent> chatAccentsByThemeId;
        public int currentAccentId;
        public int defaultAccentCount;
        public boolean firstAccentIsDefault;
        public TLRPC$TL_theme info;
        public boolean isBlured;
        private int isDark;
        public boolean isMotion;
        public int lastAccentId;
        public int lastChatThemeId;
        public boolean loaded;
        private String loadingThemeWallpaperName;
        public String name;
        private String newPathToWallpaper;
        public OverrideWallpaperInfo overrideWallpaper;
        public String pathToFile;
        public String pathToWallpaper;
        public int patternBgColor;
        public int patternBgGradientColor1;
        public int patternBgGradientColor2;
        public int patternBgGradientColor3;
        public int patternBgGradientRotation;
        public int patternIntensity;
        public int prevAccentId;
        private int previewBackgroundColor;
        public int previewBackgroundGradientColor1;
        public int previewBackgroundGradientColor2;
        public int previewBackgroundGradientColor3;
        private int previewInColor;
        private int previewOutColor;
        public boolean previewParsed;
        public int previewWallpaperOffset;
        public String slug;
        public int sortIndex;
        public ArrayList<ThemeAccent> themeAccents;
        public SparseArray<ThemeAccent> themeAccentsMap;
        public boolean themeLoaded;
        public TLRPC$InputFile uploadedFile;
        public TLRPC$InputFile uploadedThumb;
        public String uploadingFile;
        public String uploadingThumb;

        ThemeInfo() {
            this.patternBgGradientRotation = 45;
            this.loaded = true;
            this.themeLoaded = true;
            this.prevAccentId = -1;
            this.chatAccentsByThemeId = new LongSparseArray<>();
            this.lastChatThemeId = 0;
            this.lastAccentId = 100;
            this.isDark = -1;
        }

        public ThemeInfo(ThemeInfo themeInfo) {
            this.patternBgGradientRotation = 45;
            this.loaded = true;
            this.themeLoaded = true;
            this.prevAccentId = -1;
            this.chatAccentsByThemeId = new LongSparseArray<>();
            this.lastChatThemeId = 0;
            this.lastAccentId = 100;
            this.isDark = -1;
            this.name = themeInfo.name;
            this.pathToFile = themeInfo.pathToFile;
            this.pathToWallpaper = themeInfo.pathToWallpaper;
            this.assetName = themeInfo.assetName;
            this.slug = themeInfo.slug;
            this.badWallpaper = themeInfo.badWallpaper;
            this.isBlured = themeInfo.isBlured;
            this.isMotion = themeInfo.isMotion;
            this.patternBgColor = themeInfo.patternBgColor;
            this.patternBgGradientColor1 = themeInfo.patternBgGradientColor1;
            this.patternBgGradientColor2 = themeInfo.patternBgGradientColor2;
            this.patternBgGradientColor3 = themeInfo.patternBgGradientColor3;
            this.patternBgGradientRotation = themeInfo.patternBgGradientRotation;
            this.patternIntensity = themeInfo.patternIntensity;
            this.account = themeInfo.account;
            this.info = themeInfo.info;
            this.loaded = themeInfo.loaded;
            this.uploadingThumb = themeInfo.uploadingThumb;
            this.uploadingFile = themeInfo.uploadingFile;
            this.uploadedThumb = themeInfo.uploadedThumb;
            this.uploadedFile = themeInfo.uploadedFile;
            this.previewBackgroundColor = themeInfo.previewBackgroundColor;
            this.previewBackgroundGradientColor1 = themeInfo.previewBackgroundGradientColor1;
            this.previewBackgroundGradientColor2 = themeInfo.previewBackgroundGradientColor2;
            this.previewBackgroundGradientColor3 = themeInfo.previewBackgroundGradientColor3;
            this.previewWallpaperOffset = themeInfo.previewWallpaperOffset;
            this.previewInColor = themeInfo.previewInColor;
            this.previewOutColor = themeInfo.previewOutColor;
            this.firstAccentIsDefault = themeInfo.firstAccentIsDefault;
            this.previewParsed = themeInfo.previewParsed;
            this.themeLoaded = themeInfo.themeLoaded;
            this.sortIndex = themeInfo.sortIndex;
            this.defaultAccentCount = themeInfo.defaultAccentCount;
            this.accentBaseColor = themeInfo.accentBaseColor;
            this.currentAccentId = themeInfo.currentAccentId;
            this.prevAccentId = themeInfo.prevAccentId;
            this.themeAccentsMap = themeInfo.themeAccentsMap;
            this.themeAccents = themeInfo.themeAccents;
            this.accentsByThemeId = themeInfo.accentsByThemeId;
            this.lastAccentId = themeInfo.lastAccentId;
            this.loadingThemeWallpaperName = themeInfo.loadingThemeWallpaperName;
            this.newPathToWallpaper = themeInfo.newPathToWallpaper;
            this.overrideWallpaper = themeInfo.overrideWallpaper;
        }

        JSONObject getSaveJson() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.NAME, this.name);
                jSONObject.put("path", this.pathToFile);
                jSONObject.put("account", this.account);
                TLRPC$TL_theme tLRPC$TL_theme = this.info;
                if (tLRPC$TL_theme != null) {
                    SerializedData serializedData = new SerializedData(tLRPC$TL_theme.getObjectSize());
                    this.info.serializeToStream(serializedData);
                    jSONObject.put("info", Utilities.bytesToHex(serializedData.toByteArray()));
                }
                jSONObject.put("loaded", this.loaded);
                return jSONObject;
            } catch (Exception e) {
                FileLog.m45e(e);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadWallpapers(SharedPreferences sharedPreferences) {
            ArrayList<ThemeAccent> arrayList = this.themeAccents;
            if (arrayList != null && !arrayList.isEmpty()) {
                int size = this.themeAccents.size();
                for (int i = 0; i < size; i++) {
                    ThemeAccent themeAccent = this.themeAccents.get(i);
                    loadOverrideWallpaper(sharedPreferences, themeAccent, this.name + "_" + themeAccent.f1656id + "_owp");
                }
                return;
            }
            loadOverrideWallpaper(sharedPreferences, null, this.name + "_owp");
        }

        private void loadOverrideWallpaper(SharedPreferences sharedPreferences, ThemeAccent themeAccent, String str) {
            try {
                String string = sharedPreferences.getString(str, null);
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(string);
                OverrideWallpaperInfo overrideWallpaperInfo = new OverrideWallpaperInfo();
                overrideWallpaperInfo.fileName = jSONObject.getString("wall");
                overrideWallpaperInfo.originalFileName = jSONObject.getString("owall");
                overrideWallpaperInfo.color = jSONObject.getInt("pColor");
                overrideWallpaperInfo.gradientColor1 = jSONObject.getInt("pGrColor");
                overrideWallpaperInfo.gradientColor2 = jSONObject.optInt("pGrColor2");
                overrideWallpaperInfo.gradientColor3 = jSONObject.optInt("pGrColor3");
                overrideWallpaperInfo.rotation = jSONObject.getInt("pGrAngle");
                overrideWallpaperInfo.slug = jSONObject.getString("wallSlug");
                overrideWallpaperInfo.isBlurred = jSONObject.getBoolean("wBlur");
                overrideWallpaperInfo.isMotion = jSONObject.getBoolean("wMotion");
                overrideWallpaperInfo.intensity = (float) jSONObject.getDouble("pIntensity");
                overrideWallpaperInfo.parentTheme = this;
                overrideWallpaperInfo.parentAccent = themeAccent;
                if (themeAccent != null) {
                    themeAccent.overrideWallpaper = overrideWallpaperInfo;
                } else {
                    this.overrideWallpaper = overrideWallpaperInfo;
                }
                if (jSONObject.has("wallId") && jSONObject.getLong("wallId") == 1000001) {
                    overrideWallpaperInfo.slug = "d";
                }
            } catch (Throwable th) {
                FileLog.m45e(th);
            }
        }

        public void setOverrideWallpaper(OverrideWallpaperInfo overrideWallpaperInfo) {
            if (this.overrideWallpaper == overrideWallpaperInfo) {
                return;
            }
            ThemeAccent accent = getAccent(false);
            OverrideWallpaperInfo overrideWallpaperInfo2 = this.overrideWallpaper;
            if (overrideWallpaperInfo2 != null) {
                overrideWallpaperInfo2.delete();
            }
            if (overrideWallpaperInfo != null) {
                overrideWallpaperInfo.parentAccent = accent;
                overrideWallpaperInfo.parentTheme = this;
                overrideWallpaperInfo.save();
            }
            this.overrideWallpaper = overrideWallpaperInfo;
            if (accent != null) {
                accent.overrideWallpaper = overrideWallpaperInfo;
            }
        }

        public String getName() {
            if ("Blue".equals(this.name)) {
                return LocaleController.getString("ThemeClassic", C3301R.string.ThemeClassic);
            }
            if ("Dark Blue".equals(this.name)) {
                return LocaleController.getString("ThemeDark", C3301R.string.ThemeDark);
            }
            if ("Arctic Blue".equals(this.name)) {
                return LocaleController.getString("ThemeArcticBlue", C3301R.string.ThemeArcticBlue);
            }
            if ("Day".equals(this.name)) {
                return LocaleController.getString("ThemeDay", C3301R.string.ThemeDay);
            }
            if ("Night".equals(this.name)) {
                return LocaleController.getString("ThemeNight", C3301R.string.ThemeNight);
            }
            TLRPC$TL_theme tLRPC$TL_theme = this.info;
            return tLRPC$TL_theme != null ? tLRPC$TL_theme.title : this.name;
        }

        public void setCurrentAccentId(int i) {
            this.currentAccentId = i;
            ThemeAccent accent = getAccent(false);
            if (accent != null) {
                this.overrideWallpaper = accent.overrideWallpaper;
            }
        }

        public String generateWallpaperName(ThemeAccent themeAccent, boolean z) {
            StringBuilder sb;
            StringBuilder sb2;
            if (themeAccent == null) {
                themeAccent = getAccent(false);
            }
            if (themeAccent != null) {
                StringBuilder sb3 = new StringBuilder();
                if (z) {
                    sb2 = new StringBuilder();
                    sb2.append(this.name);
                    sb2.append("_");
                    sb2.append(themeAccent.f1656id);
                    sb2.append("_wp_o");
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(this.name);
                    sb2.append("_");
                    sb2.append(themeAccent.f1656id);
                    sb2.append("_wp");
                }
                sb3.append(sb2.toString());
                sb3.append(Utilities.random.nextInt());
                sb3.append(".jpg");
                return sb3.toString();
            }
            StringBuilder sb4 = new StringBuilder();
            if (z) {
                sb = new StringBuilder();
                sb.append(this.name);
                sb.append("_wp_o");
            } else {
                sb = new StringBuilder();
                sb.append(this.name);
                sb.append("_wp");
            }
            sb4.append(sb.toString());
            sb4.append(Utilities.random.nextInt());
            sb4.append(".jpg");
            return sb4.toString();
        }

        public void setPreviewInColor(int i) {
            this.previewInColor = i;
        }

        public void setPreviewOutColor(int i) {
            this.previewOutColor = i;
        }

        public void setPreviewBackgroundColor(int i) {
            this.previewBackgroundColor = i;
        }

        public int getPreviewInColor() {
            if (this.firstAccentIsDefault && this.currentAccentId == Theme.DEFALT_THEME_ACCENT_ID) {
                return -1;
            }
            return this.previewInColor;
        }

        public int getPreviewOutColor() {
            if (this.firstAccentIsDefault && this.currentAccentId == Theme.DEFALT_THEME_ACCENT_ID) {
                return -983328;
            }
            return this.previewOutColor;
        }

        public int getPreviewBackgroundColor() {
            if (this.firstAccentIsDefault && this.currentAccentId == Theme.DEFALT_THEME_ACCENT_ID) {
                return -3155485;
            }
            return this.previewBackgroundColor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isDefaultMyMessagesBubbles() {
            if (this.firstAccentIsDefault) {
                int i = this.currentAccentId;
                int i2 = Theme.DEFALT_THEME_ACCENT_ID;
                if (i == i2) {
                    return true;
                }
                ThemeAccent themeAccent = this.themeAccentsMap.get(i2);
                ThemeAccent themeAccent2 = this.themeAccentsMap.get(this.currentAccentId);
                return themeAccent != null && themeAccent2 != null && themeAccent.myMessagesAccentColor == themeAccent2.myMessagesAccentColor && themeAccent.myMessagesGradientAccentColor1 == themeAccent2.myMessagesGradientAccentColor1 && themeAccent.myMessagesGradientAccentColor2 == themeAccent2.myMessagesGradientAccentColor2 && themeAccent.myMessagesGradientAccentColor3 == themeAccent2.myMessagesGradientAccentColor3 && themeAccent.myMessagesAnimated == themeAccent2.myMessagesAnimated;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isDefaultMyMessages() {
            if (this.firstAccentIsDefault) {
                int i = this.currentAccentId;
                int i2 = Theme.DEFALT_THEME_ACCENT_ID;
                if (i == i2) {
                    return true;
                }
                ThemeAccent themeAccent = this.themeAccentsMap.get(i2);
                ThemeAccent themeAccent2 = this.themeAccentsMap.get(this.currentAccentId);
                return themeAccent != null && themeAccent2 != null && themeAccent.accentColor2 == themeAccent2.accentColor2 && themeAccent.myMessagesAccentColor == themeAccent2.myMessagesAccentColor && themeAccent.myMessagesGradientAccentColor1 == themeAccent2.myMessagesGradientAccentColor1 && themeAccent.myMessagesGradientAccentColor2 == themeAccent2.myMessagesGradientAccentColor2 && themeAccent.myMessagesGradientAccentColor3 == themeAccent2.myMessagesGradientAccentColor3 && themeAccent.myMessagesAnimated == themeAccent2.myMessagesAnimated;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isDefaultMainAccent() {
            if (this.firstAccentIsDefault) {
                int i = this.currentAccentId;
                int i2 = Theme.DEFALT_THEME_ACCENT_ID;
                if (i == i2) {
                    return true;
                }
                ThemeAccent themeAccent = this.themeAccentsMap.get(i2);
                ThemeAccent themeAccent2 = this.themeAccentsMap.get(this.currentAccentId);
                return (themeAccent2 == null || themeAccent == null || themeAccent.accentColor != themeAccent2.accentColor) ? false : true;
            }
            return false;
        }

        public boolean hasAccentColors() {
            return this.defaultAccentCount != 0;
        }

        public boolean isDark() {
            int i = this.isDark;
            if (i != -1) {
                return i == 1;
            }
            if ("Dark Blue".equals(this.name) || "Night".equals(this.name)) {
                this.isDark = 1;
            } else if ("Blue".equals(this.name) || "Arctic Blue".equals(this.name) || "Day".equals(this.name)) {
                this.isDark = 0;
            }
            if (this.isDark == -1) {
                Theme.checkIsDark(Theme.getThemeFileValues(new File(this.pathToFile), null, new String[1]), this);
            }
            return this.isDark == 1;
        }

        public boolean isLight() {
            return this.pathToFile == null && !isDark();
        }

        public String getKey() {
            if (this.info != null) {
                return "remote" + this.info.f1631id;
            }
            return this.name;
        }

        static ThemeInfo createWithJson(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            try {
                ThemeInfo themeInfo = new ThemeInfo();
                themeInfo.name = jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
                themeInfo.pathToFile = jSONObject.getString("path");
                if (jSONObject.has("account")) {
                    themeInfo.account = jSONObject.getInt("account");
                }
                if (jSONObject.has("info")) {
                    SerializedData serializedData = new SerializedData(Utilities.hexToBytes(jSONObject.getString("info")));
                    themeInfo.info = TLRPC$Theme.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                }
                if (jSONObject.has("loaded")) {
                    themeInfo.loaded = jSONObject.getBoolean("loaded");
                }
                return themeInfo;
            } catch (Exception e) {
                FileLog.m45e(e);
                return null;
            }
        }

        static ThemeInfo createWithString(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String[] split = str.split("\\|");
            if (split.length != 2) {
                return null;
            }
            ThemeInfo themeInfo = new ThemeInfo();
            themeInfo.name = split[0];
            themeInfo.pathToFile = split[1];
            return themeInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccentColorOptions(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int[] iArr8, String[] strArr, int[] iArr9, int[] iArr10) {
            this.defaultAccentCount = iArr.length;
            this.themeAccents = new ArrayList<>();
            this.themeAccentsMap = new SparseArray<>();
            this.accentsByThemeId = new LongSparseArray<>();
            for (int i = 0; i < iArr.length; i++) {
                ThemeAccent themeAccent = new ThemeAccent();
                themeAccent.f1656id = iArr8 != null ? iArr8[i] : i;
                if (Theme.isHome(themeAccent)) {
                    themeAccent.isDefault = true;
                }
                themeAccent.accentColor = iArr[i];
                themeAccent.parentTheme = this;
                if (iArr2 != null) {
                    themeAccent.myMessagesAccentColor = iArr2[i];
                }
                if (iArr3 != null) {
                    themeAccent.myMessagesGradientAccentColor1 = iArr3[i];
                }
                if (iArr4 != null) {
                    themeAccent.backgroundOverrideColor = iArr4[i];
                    if (this.firstAccentIsDefault && themeAccent.f1656id == Theme.DEFALT_THEME_ACCENT_ID) {
                        themeAccent.backgroundOverrideColor = 4294967296L;
                    } else {
                        themeAccent.backgroundOverrideColor = iArr4[i];
                    }
                }
                if (iArr5 != null) {
                    if (this.firstAccentIsDefault && themeAccent.f1656id == Theme.DEFALT_THEME_ACCENT_ID) {
                        themeAccent.backgroundGradientOverrideColor1 = 4294967296L;
                    } else {
                        themeAccent.backgroundGradientOverrideColor1 = iArr5[i];
                    }
                }
                if (iArr6 != null) {
                    if (this.firstAccentIsDefault && themeAccent.f1656id == Theme.DEFALT_THEME_ACCENT_ID) {
                        themeAccent.backgroundGradientOverrideColor2 = 4294967296L;
                    } else {
                        themeAccent.backgroundGradientOverrideColor2 = iArr6[i];
                    }
                }
                if (iArr7 != null) {
                    if (this.firstAccentIsDefault && themeAccent.f1656id == Theme.DEFALT_THEME_ACCENT_ID) {
                        themeAccent.backgroundGradientOverrideColor3 = 4294967296L;
                    } else {
                        themeAccent.backgroundGradientOverrideColor3 = iArr7[i];
                    }
                }
                if (strArr != null) {
                    themeAccent.patternIntensity = iArr10[i] / 100.0f;
                    themeAccent.backgroundRotation = iArr9[i];
                    themeAccent.patternSlug = strArr[i];
                }
                if ((Theme.isHome(themeAccent) && this.name.equals("Dark Blue")) || this.name.equals("Night")) {
                    themeAccent.myMessagesAccentColor = -10128392;
                    themeAccent.myMessagesGradientAccentColor1 = -9026357;
                    themeAccent.myMessagesGradientAccentColor2 = -7845452;
                    themeAccent.myMessagesGradientAccentColor3 = -5811800;
                    if (this.name.equals("Night")) {
                        themeAccent.patternIntensity = -0.57f;
                        themeAccent.backgroundOverrideColor = -9666650L;
                        themeAccent.backgroundGradientOverrideColor1 = -13749173L;
                        themeAccent.backgroundGradientOverrideColor2 = -8883033L;
                        themeAccent.backgroundGradientOverrideColor3 = -13421992L;
                    }
                }
                this.themeAccentsMap.put(themeAccent.f1656id, themeAccent);
                this.themeAccents.add(themeAccent);
            }
            this.accentBaseColor = this.themeAccentsMap.get(0).accentColor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadThemeDocument() {
            this.loaded = false;
            this.loadingThemeWallpaperName = null;
            this.newPathToWallpaper = null;
            addObservers();
            FileLoader fileLoader = FileLoader.getInstance(this.account);
            TLRPC$TL_theme tLRPC$TL_theme = this.info;
            fileLoader.loadFile(tLRPC$TL_theme.document, tLRPC$TL_theme, 1, 1);
        }

        private void addObservers() {
            NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoadFailed);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeObservers() {
            NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.fileLoadFailed);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFinishLoadingRemoteTheme() {
            this.loaded = true;
            this.previewParsed = false;
            Theme.saveOtherThemes(true);
            if (this == Theme.currentTheme && Theme.previousTheme == null) {
                NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
                int i = NotificationCenter.needSetDayNightTheme;
                Object[] objArr = new Object[5];
                objArr[0] = this;
                objArr[1] = Boolean.valueOf(this == Theme.currentNightTheme);
                objArr[2] = null;
                objArr[3] = -1;
                objArr[4] = Theme.fallbackKeys;
                globalInstance.postNotificationName(i, objArr);
            }
        }

        public static boolean accentEquals(ThemeAccent themeAccent, TLRPC$ThemeSettings tLRPC$ThemeSettings) {
            long j;
            long j2;
            int i;
            String str;
            float f;
            int i2;
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings;
            int i3;
            int i4;
            int i5;
            long j3;
            int intValue = tLRPC$ThemeSettings.message_colors.size() > 0 ? tLRPC$ThemeSettings.message_colors.get(0).intValue() | (-16777216) : 0;
            int intValue2 = tLRPC$ThemeSettings.message_colors.size() > 1 ? tLRPC$ThemeSettings.message_colors.get(1).intValue() | (-16777216) : 0;
            if (intValue == intValue2) {
                intValue2 = 0;
            }
            int intValue3 = tLRPC$ThemeSettings.message_colors.size() > 2 ? tLRPC$ThemeSettings.message_colors.get(2).intValue() | (-16777216) : 0;
            int intValue4 = tLRPC$ThemeSettings.message_colors.size() > 3 ? (-16777216) | tLRPC$ThemeSettings.message_colors.get(3).intValue() : 0;
            TLRPC$WallPaper tLRPC$WallPaper = tLRPC$ThemeSettings.wallpaper;
            long j4 = 0;
            if (tLRPC$WallPaper == null || (tLRPC$WallPaperSettings = tLRPC$WallPaper.settings) == null) {
                j = 0;
                j2 = 0;
                i = 0;
                str = null;
                f = BitmapDescriptorFactory.HUE_RED;
                i2 = 0;
            } else {
                i2 = Theme.getWallpaperColor(tLRPC$WallPaperSettings.background_color);
                long wallpaperColor = tLRPC$ThemeSettings.wallpaper.settings.second_background_color == 0 ? 4294967296L : Theme.getWallpaperColor(i3);
                long wallpaperColor2 = tLRPC$ThemeSettings.wallpaper.settings.third_background_color == 0 ? 4294967296L : Theme.getWallpaperColor(i4);
                long wallpaperColor3 = tLRPC$ThemeSettings.wallpaper.settings.fourth_background_color == 0 ? 4294967296L : Theme.getWallpaperColor(i5);
                int wallpaperRotation = AndroidUtilities.getWallpaperRotation(tLRPC$ThemeSettings.wallpaper.settings.rotation, false);
                TLRPC$WallPaper tLRPC$WallPaper2 = tLRPC$ThemeSettings.wallpaper;
                if ((tLRPC$WallPaper2 instanceof TLRPC$TL_wallPaperNoFile) || !tLRPC$WallPaper2.pattern) {
                    i = wallpaperRotation;
                    j3 = wallpaperColor2;
                    str = null;
                    f = BitmapDescriptorFactory.HUE_RED;
                } else {
                    j3 = wallpaperColor2;
                    f = tLRPC$WallPaper2.settings.intensity / 100.0f;
                    str = tLRPC$WallPaper2.slug;
                    i = wallpaperRotation;
                }
                long j5 = wallpaperColor3;
                j4 = wallpaperColor;
                j = j3;
                j2 = j5;
            }
            return tLRPC$ThemeSettings.accent_color == themeAccent.accentColor && tLRPC$ThemeSettings.outbox_accent_color == themeAccent.accentColor2 && intValue == themeAccent.myMessagesAccentColor && intValue2 == themeAccent.myMessagesGradientAccentColor1 && intValue3 == themeAccent.myMessagesGradientAccentColor2 && intValue4 == themeAccent.myMessagesGradientAccentColor3 && tLRPC$ThemeSettings.message_colors_animated == themeAccent.myMessagesAnimated && ((long) i2) == themeAccent.backgroundOverrideColor && j4 == themeAccent.backgroundGradientOverrideColor1 && j == themeAccent.backgroundGradientOverrideColor2 && j2 == themeAccent.backgroundGradientOverrideColor3 && i == themeAccent.backgroundRotation && TextUtils.equals(str, themeAccent.patternSlug) && ((double) Math.abs(f - themeAccent.patternIntensity)) < 0.001d;
        }

        public static void fillAccentValues(ThemeAccent themeAccent, TLRPC$ThemeSettings tLRPC$ThemeSettings) {
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings;
            themeAccent.accentColor = tLRPC$ThemeSettings.accent_color;
            themeAccent.accentColor2 = tLRPC$ThemeSettings.outbox_accent_color;
            themeAccent.myMessagesAccentColor = tLRPC$ThemeSettings.message_colors.size() > 0 ? tLRPC$ThemeSettings.message_colors.get(0).intValue() | (-16777216) : 0;
            int intValue = tLRPC$ThemeSettings.message_colors.size() > 1 ? tLRPC$ThemeSettings.message_colors.get(1).intValue() | (-16777216) : 0;
            themeAccent.myMessagesGradientAccentColor1 = intValue;
            if (themeAccent.myMessagesAccentColor == intValue) {
                themeAccent.myMessagesGradientAccentColor1 = 0;
            }
            themeAccent.myMessagesGradientAccentColor2 = tLRPC$ThemeSettings.message_colors.size() > 2 ? tLRPC$ThemeSettings.message_colors.get(2).intValue() | (-16777216) : 0;
            themeAccent.myMessagesGradientAccentColor3 = tLRPC$ThemeSettings.message_colors.size() > 3 ? tLRPC$ThemeSettings.message_colors.get(3).intValue() | (-16777216) : 0;
            themeAccent.myMessagesAnimated = tLRPC$ThemeSettings.message_colors_animated;
            TLRPC$WallPaper tLRPC$WallPaper = tLRPC$ThemeSettings.wallpaper;
            if (tLRPC$WallPaper == null || (tLRPC$WallPaperSettings = tLRPC$WallPaper.settings) == null) {
                return;
            }
            int i = tLRPC$WallPaperSettings.background_color;
            if (i == 0) {
                themeAccent.backgroundOverrideColor = 4294967296L;
            } else {
                themeAccent.backgroundOverrideColor = Theme.getWallpaperColor(i);
            }
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings2 = tLRPC$ThemeSettings.wallpaper.settings;
            if ((tLRPC$WallPaperSettings2.flags & 16) != 0 && tLRPC$WallPaperSettings2.second_background_color == 0) {
                themeAccent.backgroundGradientOverrideColor1 = 4294967296L;
            } else {
                themeAccent.backgroundGradientOverrideColor1 = Theme.getWallpaperColor(tLRPC$WallPaperSettings2.second_background_color);
            }
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings3 = tLRPC$ThemeSettings.wallpaper.settings;
            if ((tLRPC$WallPaperSettings3.flags & 32) != 0 && tLRPC$WallPaperSettings3.third_background_color == 0) {
                themeAccent.backgroundGradientOverrideColor2 = 4294967296L;
            } else {
                themeAccent.backgroundGradientOverrideColor2 = Theme.getWallpaperColor(tLRPC$WallPaperSettings3.third_background_color);
            }
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings4 = tLRPC$ThemeSettings.wallpaper.settings;
            if ((tLRPC$WallPaperSettings4.flags & 64) != 0 && tLRPC$WallPaperSettings4.fourth_background_color == 0) {
                themeAccent.backgroundGradientOverrideColor3 = 4294967296L;
            } else {
                themeAccent.backgroundGradientOverrideColor3 = Theme.getWallpaperColor(tLRPC$WallPaperSettings4.fourth_background_color);
            }
            themeAccent.backgroundRotation = AndroidUtilities.getWallpaperRotation(tLRPC$ThemeSettings.wallpaper.settings.rotation, false);
            TLRPC$WallPaper tLRPC$WallPaper2 = tLRPC$ThemeSettings.wallpaper;
            if ((tLRPC$WallPaper2 instanceof TLRPC$TL_wallPaperNoFile) || !tLRPC$WallPaper2.pattern) {
                return;
            }
            themeAccent.patternSlug = tLRPC$WallPaper2.slug;
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings5 = tLRPC$WallPaper2.settings;
            themeAccent.patternIntensity = tLRPC$WallPaperSettings5.intensity / 100.0f;
            themeAccent.patternMotion = tLRPC$WallPaperSettings5.motion;
        }

        public ThemeAccent createNewAccent(TLRPC$ThemeSettings tLRPC$ThemeSettings) {
            ThemeAccent themeAccent = new ThemeAccent();
            fillAccentValues(themeAccent, tLRPC$ThemeSettings);
            themeAccent.parentTheme = this;
            return themeAccent;
        }

        public ThemeAccent createNewAccent(TLRPC$TL_theme tLRPC$TL_theme, int i) {
            return createNewAccent(tLRPC$TL_theme, i, false, 0);
        }

        public ThemeAccent createNewAccent(TLRPC$TL_theme tLRPC$TL_theme, int i, boolean z, int i2) {
            if (tLRPC$TL_theme == null) {
                return null;
            }
            TLRPC$ThemeSettings tLRPC$ThemeSettings = i2 < tLRPC$TL_theme.settings.size() ? tLRPC$TL_theme.settings.get(i2) : null;
            if (z) {
                ThemeAccent themeAccent = this.chatAccentsByThemeId.get(tLRPC$TL_theme.f1631id);
                if (themeAccent != null) {
                    return themeAccent;
                }
                int i3 = this.lastChatThemeId + 1;
                this.lastChatThemeId = i3;
                ThemeAccent createNewAccent = createNewAccent(tLRPC$ThemeSettings);
                createNewAccent.f1656id = i3;
                createNewAccent.info = tLRPC$TL_theme;
                createNewAccent.account = i;
                this.chatAccentsByThemeId.put(i3, createNewAccent);
                return createNewAccent;
            }
            ThemeAccent themeAccent2 = this.accentsByThemeId.get(tLRPC$TL_theme.f1631id);
            if (themeAccent2 != null) {
                return themeAccent2;
            }
            int i4 = this.lastAccentId + 1;
            this.lastAccentId = i4;
            ThemeAccent createNewAccent2 = createNewAccent(tLRPC$ThemeSettings);
            createNewAccent2.f1656id = i4;
            createNewAccent2.info = tLRPC$TL_theme;
            createNewAccent2.account = i;
            this.themeAccentsMap.put(i4, createNewAccent2);
            this.themeAccents.add(0, createNewAccent2);
            Theme.sortAccents(this);
            this.accentsByThemeId.put(tLRPC$TL_theme.f1631id, createNewAccent2);
            return createNewAccent2;
        }

        public ThemeAccent getAccent(boolean z) {
            ThemeAccent themeAccent;
            if (this.themeAccents == null || (themeAccent = this.themeAccentsMap.get(this.currentAccentId)) == null) {
                return null;
            }
            if (z) {
                int i = this.lastAccentId + 1;
                this.lastAccentId = i;
                ThemeAccent themeAccent2 = new ThemeAccent();
                themeAccent2.accentColor = themeAccent.accentColor;
                themeAccent2.accentColor2 = themeAccent.accentColor2;
                themeAccent2.myMessagesAccentColor = themeAccent.myMessagesAccentColor;
                themeAccent2.myMessagesGradientAccentColor1 = themeAccent.myMessagesGradientAccentColor1;
                themeAccent2.myMessagesGradientAccentColor2 = themeAccent.myMessagesGradientAccentColor2;
                themeAccent2.myMessagesGradientAccentColor3 = themeAccent.myMessagesGradientAccentColor3;
                themeAccent2.myMessagesAnimated = themeAccent.myMessagesAnimated;
                themeAccent2.backgroundOverrideColor = themeAccent.backgroundOverrideColor;
                themeAccent2.backgroundGradientOverrideColor1 = themeAccent.backgroundGradientOverrideColor1;
                themeAccent2.backgroundGradientOverrideColor2 = themeAccent.backgroundGradientOverrideColor2;
                themeAccent2.backgroundGradientOverrideColor3 = themeAccent.backgroundGradientOverrideColor3;
                themeAccent2.backgroundRotation = themeAccent.backgroundRotation;
                themeAccent2.patternSlug = themeAccent.patternSlug;
                themeAccent2.patternIntensity = themeAccent.patternIntensity;
                themeAccent2.patternMotion = themeAccent.patternMotion;
                themeAccent2.parentTheme = this;
                OverrideWallpaperInfo overrideWallpaperInfo = this.overrideWallpaper;
                if (overrideWallpaperInfo != null) {
                    themeAccent2.overrideWallpaper = new OverrideWallpaperInfo(overrideWallpaperInfo, this, themeAccent2);
                }
                this.prevAccentId = this.currentAccentId;
                themeAccent2.f1656id = i;
                this.currentAccentId = i;
                this.overrideWallpaper = themeAccent2.overrideWallpaper;
                this.themeAccentsMap.put(i, themeAccent2);
                this.themeAccents.add(0, themeAccent2);
                Theme.sortAccents(this);
                return themeAccent2;
            }
            return themeAccent;
        }

        public int getAccentColor(int i) {
            ThemeAccent themeAccent = this.themeAccentsMap.get(i);
            if (themeAccent != null) {
                return themeAccent.accentColor;
            }
            return 0;
        }

        public boolean createBackground(File file, String str) {
            int patternColor;
            try {
                Bitmap scaledBitmap = AndroidUtilities.getScaledBitmap(AndroidUtilities.m50dp(640), AndroidUtilities.m50dp(360), file.getAbsolutePath(), null, 0);
                if (scaledBitmap != null && this.patternBgColor != 0) {
                    Bitmap createBitmap = Bitmap.createBitmap(scaledBitmap.getWidth(), scaledBitmap.getHeight(), scaledBitmap.getConfig());
                    Canvas canvas = new Canvas(createBitmap);
                    int i = this.patternBgGradientColor2;
                    if (i != 0) {
                        patternColor = MotionBackgroundDrawable.getPatternColor(this.patternBgColor, this.patternBgGradientColor1, i, this.patternBgGradientColor3);
                    } else {
                        int i2 = this.patternBgGradientColor1;
                        if (i2 != 0) {
                            patternColor = AndroidUtilities.getAverageColor(this.patternBgColor, i2);
                            GradientDrawable gradientDrawable = new GradientDrawable(BackgroundGradientDrawable.getGradientOrientation(this.patternBgGradientRotation), new int[]{this.patternBgColor, this.patternBgGradientColor1});
                            gradientDrawable.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                            gradientDrawable.draw(canvas);
                        } else {
                            patternColor = AndroidUtilities.getPatternColor(this.patternBgColor);
                            canvas.drawColor(this.patternBgColor);
                        }
                    }
                    Paint paint = new Paint(2);
                    paint.setColorFilter(new PorterDuffColorFilter(patternColor, PorterDuff.Mode.SRC_IN));
                    paint.setAlpha((int) ((this.patternIntensity / 100.0f) * 255.0f));
                    canvas.drawBitmap(scaledBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                    canvas.setBitmap(null);
                    scaledBitmap = createBitmap;
                }
                if (this.isBlured) {
                    scaledBitmap = Utilities.blurWallpaper(scaledBitmap);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(str);
                scaledBitmap.compress(this.patternBgGradientColor2 != 0 ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                fileOutputStream.close();
                return true;
            } catch (Throwable th) {
                FileLog.m45e(th);
                return false;
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            int i3 = NotificationCenter.fileLoaded;
            if (i == i3 || i == NotificationCenter.fileLoadFailed) {
                String str = (String) objArr[0];
                TLRPC$TL_theme tLRPC$TL_theme = this.info;
                if (tLRPC$TL_theme == null || tLRPC$TL_theme.document == null) {
                    return;
                }
                if (str.equals(this.loadingThemeWallpaperName)) {
                    this.loadingThemeWallpaperName = null;
                    final File file = (File) objArr[1];
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$ThemeInfo$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            Theme.ThemeInfo.this.lambda$didReceivedNotification$0(file);
                        }
                    });
                } else if (str.equals(FileLoader.getAttachFileName(this.info.document))) {
                    removeObservers();
                    if (i == i3) {
                        File file2 = new File(this.pathToFile);
                        TLRPC$TL_theme tLRPC$TL_theme2 = this.info;
                        final ThemeInfo fillThemeValues = Theme.fillThemeValues(file2, tLRPC$TL_theme2.title, tLRPC$TL_theme2);
                        if (fillThemeValues != null && fillThemeValues.pathToWallpaper != null && !new File(fillThemeValues.pathToWallpaper).exists()) {
                            this.patternBgColor = fillThemeValues.patternBgColor;
                            this.patternBgGradientColor1 = fillThemeValues.patternBgGradientColor1;
                            this.patternBgGradientColor2 = fillThemeValues.patternBgGradientColor2;
                            this.patternBgGradientColor3 = fillThemeValues.patternBgGradientColor3;
                            this.patternBgGradientRotation = fillThemeValues.patternBgGradientRotation;
                            this.isBlured = fillThemeValues.isBlured;
                            this.patternIntensity = fillThemeValues.patternIntensity;
                            this.newPathToWallpaper = fillThemeValues.pathToWallpaper;
                            TLRPC$TL_account_getWallPaper tLRPC$TL_account_getWallPaper = new TLRPC$TL_account_getWallPaper();
                            TLRPC$TL_inputWallPaperSlug tLRPC$TL_inputWallPaperSlug = new TLRPC$TL_inputWallPaperSlug();
                            tLRPC$TL_inputWallPaperSlug.slug = fillThemeValues.slug;
                            tLRPC$TL_account_getWallPaper.wallpaper = tLRPC$TL_inputWallPaperSlug;
                            ConnectionsManager.getInstance(fillThemeValues.account).sendRequest(tLRPC$TL_account_getWallPaper, new RequestDelegate() { // from class: org.telegram.ui.ActionBar.Theme$ThemeInfo$$ExternalSyntheticLambda3
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                                    Theme.ThemeInfo.this.lambda$didReceivedNotification$2(fillThemeValues, tLObject, tLRPC$TL_error);
                                }
                            });
                            return;
                        }
                        onFinishLoadingRemoteTheme();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$0(File file) {
            createBackground(file, this.newPathToWallpaper);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$ThemeInfo$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Theme.ThemeInfo.this.onFinishLoadingRemoteTheme();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$2(final ThemeInfo themeInfo, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$ThemeInfo$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Theme.ThemeInfo.this.lambda$didReceivedNotification$1(tLObject, themeInfo);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$1(TLObject tLObject, ThemeInfo themeInfo) {
            if (tLObject instanceof TLRPC$TL_wallPaper) {
                TLRPC$TL_wallPaper tLRPC$TL_wallPaper = (TLRPC$TL_wallPaper) tLObject;
                this.loadingThemeWallpaperName = FileLoader.getAttachFileName(tLRPC$TL_wallPaper.document);
                addObservers();
                FileLoader.getInstance(themeInfo.account).loadFile(tLRPC$TL_wallPaper.document, tLRPC$TL_wallPaper, 1, 1);
                return;
            }
            onFinishLoadingRemoteTheme();
        }
    }

    /* renamed from: org.telegram.ui.ActionBar.Theme$ResourcesProvider */
    /* loaded from: classes5.dex */
    public interface ResourcesProvider {
        void applyServiceShaderMatrix(int i, int i2, float f, float f2);

        Integer getColor(String str);

        int getColorOrDefault(String str);

        Integer getCurrentColor(String str);

        Drawable getDrawable(String str);

        Paint getPaint(String str);

        boolean hasGradientService();

        void setAnimatedColor(String str, int i);

        /* renamed from: org.telegram.ui.ActionBar.Theme$ResourcesProvider$-CC  reason: invalid class name */
        /* loaded from: classes5.dex */
        public final /* synthetic */ class CC {
            public static Drawable $default$getDrawable(ResourcesProvider resourcesProvider, String str) {
                return null;
            }

            public static Paint $default$getPaint(ResourcesProvider resourcesProvider, String str) {
                return null;
            }

            public static boolean $default$hasGradientService(ResourcesProvider resourcesProvider) {
                return false;
            }

            public static void $default$setAnimatedColor(ResourcesProvider resourcesProvider, String str, int i) {
            }

            public static int $default$getColorOrDefault(ResourcesProvider _this, String str) {
                Integer color = _this.getColor(str);
                return color != null ? color.intValue() : Theme.getColor(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sortAccents(ThemeInfo themeInfo) {
        Collections.sort(themeInfo.themeAccents, Theme$$ExternalSyntheticLambda10.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v0, types: [boolean] */
    public static /* synthetic */ int lambda$sortAccents$0(ThemeAccent themeAccent, ThemeAccent themeAccent2) {
        if (isHome(themeAccent)) {
            return -1;
        }
        if (isHome(themeAccent2)) {
            return 1;
        }
        ?? r0 = themeAccent.isDefault;
        ?? r3 = themeAccent2.isDefault;
        if (r0 != r3) {
            return r0 > r3 ? -1 : 1;
        } else if (r0 != 0) {
            int i = themeAccent.f1656id;
            int i2 = themeAccent2.f1656id;
            if (i > i2) {
                return 1;
            }
            return i < i2 ? -1 : 0;
        } else {
            int i3 = themeAccent.f1656id;
            int i4 = themeAccent2.f1656id;
            if (i3 > i4) {
                return -1;
            }
            return i3 < i4 ? 1 : 0;
        }
    }

    public static void saveAutoNightThemeConfig() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("selectedAutoNightType", selectedAutoNightType);
        edit.putBoolean("autoNightScheduleByLocation", autoNightScheduleByLocation);
        edit.putFloat("autoNightBrighnessThreshold", autoNightBrighnessThreshold);
        edit.putInt("autoNightDayStartTime", autoNightDayStartTime);
        edit.putInt("autoNightDayEndTime", autoNightDayEndTime);
        edit.putInt("autoNightSunriseTime", autoNightSunriseTime);
        edit.putString("autoNightCityName", autoNightCityName);
        edit.putInt("autoNightSunsetTime", autoNightSunsetTime);
        edit.putLong("autoNightLocationLatitude3", Double.doubleToRawLongBits(autoNightLocationLatitude));
        edit.putLong("autoNightLocationLongitude3", Double.doubleToRawLongBits(autoNightLocationLongitude));
        edit.putInt("autoNightLastSunCheckDay", autoNightLastSunCheckDay);
        ThemeInfo themeInfo = currentNightTheme;
        if (themeInfo != null) {
            edit.putString("nighttheme", themeInfo.getKey());
        } else {
            edit.remove("nighttheme");
        }
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Drawable getStateDrawable(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 29 && (drawable instanceof StateListDrawable)) {
            return ((StateListDrawable) drawable).getStateDrawable(i);
        }
        if (StateListDrawable_getStateDrawableMethod == null) {
            try {
                StateListDrawable_getStateDrawableMethod = StateListDrawable.class.getDeclaredMethod("getStateDrawable", Integer.TYPE);
            } catch (Throwable unused) {
            }
        }
        Method method = StateListDrawable_getStateDrawableMethod;
        if (method == null) {
            return null;
        }
        try {
            return (Drawable) method.invoke(drawable, Integer.valueOf(i));
        } catch (Exception unused2) {
            return null;
        }
    }

    public static Drawable createEmojiIconSelectorDrawable(Context context, int i, int i2, int i3) {
        Resources resources = context.getResources();
        Drawable mutate = resources.getDrawable(i).mutate();
        if (i2 != 0) {
            mutate.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
        }
        Drawable mutate2 = resources.getDrawable(i).mutate();
        if (i3 != 0) {
            mutate2.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.MULTIPLY));
        }
        StateListDrawable stateListDrawable = new StateListDrawable() { // from class: org.telegram.ui.ActionBar.Theme.3
            @Override // android.graphics.drawable.DrawableContainer
            public boolean selectDrawable(int i4) {
                if (Build.VERSION.SDK_INT < 21) {
                    Drawable stateDrawable = Theme.getStateDrawable(this, i4);
                    ColorFilter colorFilter = null;
                    if (stateDrawable instanceof BitmapDrawable) {
                        colorFilter = ((BitmapDrawable) stateDrawable).getPaint().getColorFilter();
                    } else if (stateDrawable instanceof NinePatchDrawable) {
                        colorFilter = ((NinePatchDrawable) stateDrawable).getPaint().getColorFilter();
                    }
                    boolean selectDrawable = super.selectDrawable(i4);
                    if (colorFilter != null) {
                        stateDrawable.setColorFilter(colorFilter);
                    }
                    return selectDrawable;
                }
                return super.selectDrawable(i4);
            }
        };
        stateListDrawable.setEnterFadeDuration(1);
        stateListDrawable.setExitFadeDuration(200);
        stateListDrawable.addState(new int[]{16842913}, mutate2);
        stateListDrawable.addState(new int[0], mutate);
        return stateListDrawable;
    }

    public static Drawable createEditTextDrawable(Context context, boolean z) {
        return createEditTextDrawable(context, getColor(z ? "dialogInputField" : "windowBackgroundWhiteInputField"), getColor(z ? "dialogInputFieldActivated" : "windowBackgroundWhiteInputFieldActivated"));
    }

    public static Drawable createEditTextDrawable(Context context, int i, int i2) {
        Resources resources = context.getResources();
        Drawable mutate = resources.getDrawable(C3301R.C3303drawable.search_dark).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        Drawable mutate2 = resources.getDrawable(C3301R.C3303drawable.search_dark_activated).mutate();
        mutate2.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
        StateListDrawable stateListDrawable = new StateListDrawable() { // from class: org.telegram.ui.ActionBar.Theme.4
            @Override // android.graphics.drawable.DrawableContainer
            public boolean selectDrawable(int i3) {
                if (Build.VERSION.SDK_INT < 21) {
                    Drawable stateDrawable = Theme.getStateDrawable(this, i3);
                    ColorFilter colorFilter = null;
                    if (stateDrawable instanceof BitmapDrawable) {
                        colorFilter = ((BitmapDrawable) stateDrawable).getPaint().getColorFilter();
                    } else if (stateDrawable instanceof NinePatchDrawable) {
                        colorFilter = ((NinePatchDrawable) stateDrawable).getPaint().getColorFilter();
                    }
                    boolean selectDrawable = super.selectDrawable(i3);
                    if (colorFilter != null) {
                        stateDrawable.setColorFilter(colorFilter);
                    }
                    return selectDrawable;
                }
                return super.selectDrawable(i3);
            }
        };
        stateListDrawable.addState(new int[]{16842910, 16842908}, mutate2);
        stateListDrawable.addState(new int[]{16842908}, mutate2);
        stateListDrawable.addState(StateSet.WILD_CARD, mutate);
        return stateListDrawable;
    }

    public static boolean canStartHolidayAnimation() {
        return canStartHolidayAnimation;
    }

    public static int getEventType() {
        if (SharedConfig.drawerHolidayIconType != DrawerHolidayIconType.DEFAULT) {
            return SharedConfig.drawerHolidayIconType.getEventType();
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i = calendar.get(2);
        int i2 = calendar.get(5);
        calendar.get(12);
        int i3 = calendar.get(11);
        if ((i != 11 || i2 < 20) && (i != 0 || i2 > 5)) {
            if (i == 1 && i2 == 14) {
                return 1;
            }
            if (i != 9 || i2 < 30) {
                return (i == 10 && i2 == 1 && i3 < 12) ? 2 : -1;
            }
            return 2;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        if (r2 <= 31) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
        if (r2 == 1) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005b, code lost:
        org.telegram.p048ui.ActionBar.Theme.dialogs_holidayDrawable = org.telegram.messenger.ApplicationLoader.applicationContext.getResources().getDrawable(org.telegram.messenger.C3301R.C3303drawable.newyear);
        org.telegram.p048ui.ActionBar.Theme.dialogs_holidayDrawableOffsetX = -org.telegram.messenger.AndroidUtilities.m50dp(3);
        org.telegram.p048ui.ActionBar.Theme.dialogs_holidayDrawableOffsetY = -org.telegram.messenger.AndroidUtilities.m50dp(-7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.drawable.Drawable getCurrentHolidayDrawable() {
        /*
            long r0 = java.lang.System.currentTimeMillis()
            long r2 = org.telegram.p048ui.ActionBar.Theme.lastHolidayCheckTime
            long r0 = r0 - r2
            r2 = 60000(0xea60, double:2.9644E-319)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L79
            long r0 = java.lang.System.currentTimeMillis()
            org.telegram.p048ui.ActionBar.Theme.lastHolidayCheckTime = r0
            java.util.Calendar r0 = java.util.Calendar.getInstance()
            long r1 = java.lang.System.currentTimeMillis()
            r0.setTimeInMillis(r1)
            r1 = 2
            int r1 = r0.get(r1)
            r2 = 5
            int r2 = r0.get(r2)
            r3 = 12
            r0.get(r3)
            r3 = 11
            int r0 = r0.get(r3)
            r4 = 1
            if (r1 != 0) goto L40
            if (r2 != r4) goto L40
            r5 = 23
            if (r0 > r5) goto L40
            org.telegram.p048ui.ActionBar.Theme.canStartHolidayAnimation = r4
            goto L43
        L40:
            r0 = 0
            org.telegram.p048ui.ActionBar.Theme.canStartHolidayAnimation = r0
        L43:
            android.graphics.drawable.Drawable r0 = org.telegram.p048ui.ActionBar.Theme.dialogs_holidayDrawable
            if (r0 != 0) goto L79
            if (r1 != r3) goto L57
            boolean r0 = org.telegram.messenger.BuildVars.DEBUG_PRIVATE_VERSION
            r3 = 31
            if (r0 == 0) goto L52
            r0 = 29
            goto L53
        L52:
            r0 = r3
        L53:
            if (r2 < r0) goto L57
            if (r2 <= r3) goto L5b
        L57:
            if (r1 != 0) goto L79
            if (r2 != r4) goto L79
        L5b:
            android.content.Context r0 = org.telegram.messenger.ApplicationLoader.applicationContext
            android.content.res.Resources r0 = r0.getResources()
            int r1 = org.telegram.messenger.C3301R.C3303drawable.newyear
            android.graphics.drawable.Drawable r0 = r0.getDrawable(r1)
            org.telegram.p048ui.ActionBar.Theme.dialogs_holidayDrawable = r0
            r0 = 3
            int r0 = org.telegram.messenger.AndroidUtilities.m50dp(r0)
            int r0 = -r0
            org.telegram.p048ui.ActionBar.Theme.dialogs_holidayDrawableOffsetX = r0
            r0 = -7
            int r0 = org.telegram.messenger.AndroidUtilities.m50dp(r0)
            int r0 = -r0
            org.telegram.p048ui.ActionBar.Theme.dialogs_holidayDrawableOffsetY = r0
        L79:
            android.graphics.drawable.Drawable r0 = org.telegram.p048ui.ActionBar.Theme.dialogs_holidayDrawable
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.getCurrentHolidayDrawable():android.graphics.drawable.Drawable");
    }

    public static int getCurrentHolidayDrawableXOffset() {
        return dialogs_holidayDrawableOffsetX;
    }

    public static int getCurrentHolidayDrawableYOffset() {
        return dialogs_holidayDrawableOffsetY;
    }

    public static ShapeDrawable createCircleDrawable(int i, int i2) {
        OvalShape ovalShape = new OvalShape();
        float f = i;
        ovalShape.resize(f, f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(ovalShape);
        shapeDrawable.setIntrinsicWidth(i);
        shapeDrawable.setIntrinsicHeight(i);
        shapeDrawable.getPaint().setColor(i2);
        return shapeDrawable;
    }

    public static CombinedDrawable createCircleDrawableWithIcon(int i, int i2) {
        return createCircleDrawableWithIcon(i, i2, 0);
    }

    public static CombinedDrawable createCircleDrawableWithIcon(int i, int i2, int i3) {
        return createCircleDrawableWithIcon(i, i2 != 0 ? ApplicationLoader.applicationContext.getResources().getDrawable(i2).mutate() : null, i3);
    }

    public static CombinedDrawable createCircleDrawableWithIcon(int i, Drawable drawable, int i2) {
        OvalShape ovalShape = new OvalShape();
        float f = i;
        ovalShape.resize(f, f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(ovalShape);
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(-1);
        if (i2 == 1) {
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(AndroidUtilities.m50dp(2));
        } else if (i2 == 2) {
            paint.setAlpha(0);
        }
        CombinedDrawable combinedDrawable = new CombinedDrawable(shapeDrawable, drawable);
        combinedDrawable.setCustomSize(i, i);
        return combinedDrawable;
    }

    public static Drawable createRoundRectDrawableWithIcon(int i, int i2) {
        float f = i;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, null, null));
        shapeDrawable.getPaint().setColor(-1);
        return new CombinedDrawable(shapeDrawable, ApplicationLoader.applicationContext.getResources().getDrawable(i2).mutate());
    }

    public static float getThemeIntensity(float f) {
        return (f >= BitmapDescriptorFactory.HUE_RED || getActiveTheme().isDark()) ? f : -f;
    }

    public static void setCombinedDrawableColor(Drawable drawable, int i, boolean z) {
        Drawable background;
        if (drawable instanceof CombinedDrawable) {
            if (z) {
                background = ((CombinedDrawable) drawable).getIcon();
            } else {
                background = ((CombinedDrawable) drawable).getBackground();
            }
            if (background instanceof ColorDrawable) {
                ((ColorDrawable) background).setColor(i);
            } else {
                background.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
            }
        }
    }

    public static Drawable createSimpleSelectorCircleDrawable(int i, int i2, int i3) {
        OvalShape ovalShape = new OvalShape();
        float f = i;
        ovalShape.resize(f, f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(ovalShape);
        shapeDrawable.getPaint().setColor(i2);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(ovalShape);
        if (Build.VERSION.SDK_INT >= 21) {
            shapeDrawable2.getPaint().setColor(-1);
            return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i3}), shapeDrawable, shapeDrawable2);
        }
        shapeDrawable2.getPaint().setColor(i3);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, shapeDrawable2);
        stateListDrawable.addState(new int[]{16842908}, shapeDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, shapeDrawable);
        return stateListDrawable;
    }

    public static Drawable createRoundRectDrawable(int i, int i2) {
        float f = i;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, null, null));
        shapeDrawable.getPaint().setColor(i2);
        return shapeDrawable;
    }

    public static Drawable createRoundRectDrawable(int i, int i2, int i3) {
        float f = i;
        float f2 = i2;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f, f, f, f, f2, f2, f2, f2}, null, null));
        shapeDrawable.getPaint().setColor(i3);
        return shapeDrawable;
    }

    public static Drawable createServiceDrawable(int i, View view, View view2) {
        return createServiceDrawable(i, view, view2, chat_actionBackgroundPaint);
    }

    public static Drawable createServiceDrawable(final int i, final View view, final View view2, final Paint paint) {
        return new Drawable() { // from class: org.telegram.ui.ActionBar.Theme.6
            private RectF rect = new RectF();

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i2) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect bounds = getBounds();
                this.rect.set(bounds.left, bounds.top, bounds.right, bounds.bottom);
                Theme.applyServiceShaderMatrixForView(view, view2);
                RectF rectF = this.rect;
                int i2 = i;
                canvas.drawRoundRect(rectF, i2, i2, paint);
                if (Theme.hasGradientService()) {
                    RectF rectF2 = this.rect;
                    int i3 = i;
                    canvas.drawRoundRect(rectF2, i3, i3, Theme.chat_actionBackgroundGradientDarkenPaint);
                }
            }
        };
    }

    public static Drawable createSimpleSelectorRoundRectDrawable(int i, int i2, int i3) {
        return createSimpleSelectorRoundRectDrawable(i, i2, i3, i3);
    }

    public static Drawable createSimpleSelectorRoundRectDrawable(int i, int i2, int i3, int i4) {
        float f = i;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, null, null));
        shapeDrawable.getPaint().setColor(i2);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, null, null));
        shapeDrawable2.getPaint().setColor(i4);
        if (Build.VERSION.SDK_INT >= 21) {
            return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i3}), shapeDrawable, shapeDrawable2);
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, shapeDrawable2);
        stateListDrawable.addState(new int[]{16842913}, shapeDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, shapeDrawable);
        return stateListDrawable;
    }

    public static Drawable createSelectorDrawableFromDrawables(Drawable drawable, Drawable drawable2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, drawable2);
        stateListDrawable.addState(new int[]{16842913}, drawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, drawable);
        return stateListDrawable;
    }

    public static Drawable getRoundRectSelectorDrawable(int i) {
        return getRoundRectSelectorDrawable(AndroidUtilities.m50dp(3), i);
    }

    public static Drawable getRoundRectSelectorDrawable(int i, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{(i2 & 16777215) | 419430400}), null, createRoundRectDrawable(i, -1));
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        int i3 = (i2 & 16777215) | 419430400;
        stateListDrawable.addState(new int[]{16842919}, createRoundRectDrawable(i, i3));
        stateListDrawable.addState(new int[]{16842913}, createRoundRectDrawable(i, i3));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(0));
        return stateListDrawable;
    }

    public static Drawable createSelectorWithBackgroundDrawable(int i, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i2}), new ColorDrawable(i), new ColorDrawable(i));
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, new ColorDrawable(i2));
        stateListDrawable.addState(new int[]{16842913}, new ColorDrawable(i2));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(i));
        return stateListDrawable;
    }

    public static Drawable getSelectorDrawable(boolean z) {
        return getSelectorDrawable(getColor("listSelectorSDK21"), z);
    }

    public static Drawable getSelectorDrawable(int i, boolean z) {
        if (z) {
            return getSelectorDrawable(i, "windowBackgroundWhite");
        }
        return createSelectorDrawable(i, 2);
    }

    public static Drawable getSelectorDrawable(int i, String str) {
        if (str != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), new ColorDrawable(getColor(str)), new ColorDrawable(-1));
            }
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{16842919}, new ColorDrawable(i));
            stateListDrawable.addState(new int[]{16842913}, new ColorDrawable(i));
            stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(getColor(str)));
            return stateListDrawable;
        }
        return createSelectorDrawable(i, 2);
    }

    public static Drawable createSelectorDrawable(int i) {
        return createSelectorDrawable(i, 1, -1);
    }

    public static Drawable createSelectorDrawable(int i, int i2) {
        return createSelectorDrawable(i, i2, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.drawable.Drawable createSelectorDrawable(int r11, final int r12, final int r13) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 1
            r3 = 21
            if (r0 < r3) goto L63
            r3 = 23
            r4 = -1
            r5 = 5
            r6 = 0
            if (r12 == r2) goto L11
            if (r12 != r5) goto L15
        L11:
            if (r0 < r3) goto L15
        L13:
            r7 = r6
            goto L39
        L15:
            if (r12 == r2) goto L2f
            r7 = 3
            if (r12 == r7) goto L2f
            r7 = 4
            if (r12 == r7) goto L2f
            if (r12 == r5) goto L2f
            r7 = 6
            if (r12 == r7) goto L2f
            r7 = 7
            if (r12 != r7) goto L26
            goto L2f
        L26:
            r7 = 2
            if (r12 != r7) goto L13
            android.graphics.drawable.ColorDrawable r7 = new android.graphics.drawable.ColorDrawable
            r7.<init>(r4)
            goto L39
        L2f:
            android.graphics.Paint r7 = org.telegram.p048ui.ActionBar.Theme.maskPaint
            r7.setColor(r4)
            org.telegram.ui.ActionBar.Theme$7 r7 = new org.telegram.ui.ActionBar.Theme$7
            r7.<init>()
        L39:
            android.content.res.ColorStateList r8 = new android.content.res.ColorStateList
            int[][] r9 = new int[r2]
            int[] r10 = android.util.StateSet.WILD_CARD
            r9[r1] = r10
            int[] r10 = new int[r2]
            r10[r1] = r11
            r8.<init>(r9, r10)
            android.graphics.drawable.RippleDrawable r11 = new android.graphics.drawable.RippleDrawable
            r11.<init>(r8, r6, r7)
            if (r0 < r3) goto L62
            if (r12 != r2) goto L5d
            if (r13 > 0) goto L59
            r12 = 20
            int r13 = org.telegram.messenger.AndroidUtilities.m50dp(r12)
        L59:
            r11.setRadius(r13)
            goto L62
        L5d:
            if (r12 != r5) goto L62
            r11.setRadius(r4)
        L62:
            return r11
        L63:
            android.graphics.drawable.StateListDrawable r12 = new android.graphics.drawable.StateListDrawable
            r12.<init>()
            int[] r13 = new int[r2]
            r0 = 16842919(0x10100a7, float:2.3694026E-38)
            r13[r1] = r0
            android.graphics.drawable.ColorDrawable r0 = new android.graphics.drawable.ColorDrawable
            r0.<init>(r11)
            r12.addState(r13, r0)
            int[] r13 = new int[r2]
            r0 = 16842913(0x10100a1, float:2.369401E-38)
            r13[r1] = r0
            android.graphics.drawable.ColorDrawable r0 = new android.graphics.drawable.ColorDrawable
            r0.<init>(r11)
            r12.addState(r13, r0)
            int[] r11 = android.util.StateSet.WILD_CARD
            android.graphics.drawable.ColorDrawable r13 = new android.graphics.drawable.ColorDrawable
            r13.<init>(r1)
            r12.addState(r11, r13)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.createSelectorDrawable(int, int, int):android.graphics.drawable.Drawable");
    }

    public static Drawable createCircleSelectorDrawable(int i, final int i2, final int i3) {
        if (Build.VERSION.SDK_INT >= 21) {
            maskPaint.setColor(-1);
            return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), null, new Drawable() { // from class: org.telegram.ui.ActionBar.Theme.8
                @Override // android.graphics.drawable.Drawable
                public int getOpacity() {
                    return 0;
                }

                @Override // android.graphics.drawable.Drawable
                public void setAlpha(int i4) {
                }

                @Override // android.graphics.drawable.Drawable
                public void setColorFilter(ColorFilter colorFilter) {
                }

                @Override // android.graphics.drawable.Drawable
                public void draw(Canvas canvas) {
                    Rect bounds = getBounds();
                    canvas.drawCircle((bounds.centerX() - i2) + i3, bounds.centerY(), (Math.max(bounds.width(), bounds.height()) / 2) + i2 + i3, Theme.maskPaint);
                }
            });
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, new ColorDrawable(i));
        stateListDrawable.addState(new int[]{16842913}, new ColorDrawable(i));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(0));
        return stateListDrawable;
    }

    /* renamed from: org.telegram.ui.ActionBar.Theme$AdaptiveRipple */
    /* loaded from: classes5.dex */
    public static class AdaptiveRipple {
        private static float[] tempHSV;

        public static Drawable circle(int i) {
            return circle(i, -1.0f);
        }

        public static Drawable circle(int i, float f) {
            return createCircle(calcRippleColor(i), f);
        }

        public static Drawable rect() {
            return rect(Theme.getColor("windowBackgroundWhite"));
        }

        public static Drawable rect(String str, float... fArr) {
            return rect(Theme.getColor(str), fArr);
        }

        public static Drawable rect(int i) {
            return rect(i, BitmapDescriptorFactory.HUE_RED);
        }

        public static Drawable rect(int i, float... fArr) {
            return createRect(0, calcRippleColor(i), fArr);
        }

        public static Drawable filledRect() {
            return filledRect(Theme.getColor("windowBackgroundWhite"), BitmapDescriptorFactory.HUE_RED);
        }

        public static Drawable filledRect(String str, float... fArr) {
            return filledRect(Theme.getColor(str), fArr);
        }

        public static Drawable filledRect(int i, float... fArr) {
            return createRect(i, calcRippleColor(i), fArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Drawable createRect(int i, int i2, float... fArr) {
            ColorDrawable colorDrawable = null;
            if (i != 0) {
                if (hasNonzeroRadii(fArr)) {
                    ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(calcRadii(fArr), null, null));
                    shapeDrawable.getPaint().setColor(i);
                    colorDrawable = shapeDrawable;
                } else {
                    colorDrawable = new ColorDrawable(i);
                }
            }
            return createRect(colorDrawable, i2, fArr);
        }

        private static Drawable createRect(Drawable drawable, int i, float... fArr) {
            ShapeDrawable shapeDrawable;
            ShapeDrawable shapeDrawable2;
            if (Build.VERSION.SDK_INT >= 21) {
                if (hasNonzeroRadii(fArr)) {
                    shapeDrawable2 = new ShapeDrawable(new RoundRectShape(calcRadii(fArr), null, null));
                    shapeDrawable2.getPaint().setColor(-1);
                } else {
                    shapeDrawable2 = new ShapeDrawable(new RectShape());
                    shapeDrawable2.getPaint().setColor(-1);
                }
                return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), drawable, shapeDrawable2);
            }
            StateListDrawable stateListDrawable = new StateListDrawable();
            if (hasNonzeroRadii(fArr)) {
                shapeDrawable = new ShapeDrawable(new RoundRectShape(calcRadii(fArr), null, null));
                shapeDrawable.getPaint().setColor(i);
            } else {
                shapeDrawable = new ShapeDrawable(new RectShape());
                shapeDrawable.getPaint().setColor(i);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable, shapeDrawable});
            stateListDrawable.addState(new int[]{16842919}, layerDrawable);
            stateListDrawable.addState(new int[]{16842913}, layerDrawable);
            stateListDrawable.addState(StateSet.WILD_CARD, drawable);
            return stateListDrawable;
        }

        private static Drawable createCircle(int i, float f) {
            return createCircle(0, i, f);
        }

        private static Drawable createCircle(int i, int i2, float f) {
            return createCircle(i == 0 ? null : new CircleDrawable(f, i), i2, f);
        }

        private static Drawable createCircle(Drawable drawable, int i, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), drawable, new CircleDrawable(f));
            }
            StateListDrawable stateListDrawable = new StateListDrawable();
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable, new CircleDrawable(f, i)});
            stateListDrawable.addState(new int[]{16842919}, layerDrawable);
            stateListDrawable.addState(new int[]{16842913}, layerDrawable);
            stateListDrawable.addState(StateSet.WILD_CARD, drawable);
            return stateListDrawable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.ActionBar.Theme$AdaptiveRipple$CircleDrawable */
        /* loaded from: classes5.dex */
        public static class CircleDrawable extends Drawable {
            private static Paint maskPaint;
            private Paint paint;
            private float radius;

            @Override // android.graphics.drawable.Drawable
            @Deprecated
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            public CircleDrawable(float f) {
                this.radius = f;
                if (maskPaint == null) {
                    Paint paint = new Paint(1);
                    maskPaint = paint;
                    paint.setColor(-1);
                }
                this.paint = maskPaint;
            }

            public CircleDrawable(float f, int i) {
                this.radius = f;
                Paint paint = new Paint(1);
                this.paint = paint;
                paint.setColor(i);
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                int m51dp;
                Rect bounds = getBounds();
                if (Math.abs(this.radius - (-1.0f)) < 0.01f) {
                    m51dp = Math.max(bounds.width(), bounds.height()) / 2;
                } else if (Math.abs(this.radius - (-2.0f)) < 0.01f) {
                    m51dp = (int) Math.ceil(Math.sqrt(((bounds.left - bounds.centerX()) * (bounds.left - bounds.centerX())) + ((bounds.top - bounds.centerY()) * (bounds.top - bounds.centerY()))));
                } else {
                    m51dp = AndroidUtilities.m51dp(this.radius);
                }
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), m51dp, this.paint);
            }
        }

        private static float[] calcRadii(float... fArr) {
            return fArr.length == 0 ? new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED} : fArr.length == 1 ? new float[]{AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0])} : fArr.length == 2 ? new float[]{AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[1]), AndroidUtilities.m51dp(fArr[1]), AndroidUtilities.m51dp(fArr[1]), AndroidUtilities.m51dp(fArr[1])} : fArr.length == 3 ? new float[]{AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[1]), AndroidUtilities.m51dp(fArr[1]), AndroidUtilities.m51dp(fArr[2]), AndroidUtilities.m51dp(fArr[2]), AndroidUtilities.m51dp(fArr[2]), AndroidUtilities.m51dp(fArr[2])} : fArr.length < 8 ? new float[]{AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[1]), AndroidUtilities.m51dp(fArr[1]), AndroidUtilities.m51dp(fArr[2]), AndroidUtilities.m51dp(fArr[2]), AndroidUtilities.m51dp(fArr[3]), AndroidUtilities.m51dp(fArr[3])} : new float[]{AndroidUtilities.m51dp(fArr[0]), AndroidUtilities.m51dp(fArr[1]), AndroidUtilities.m51dp(fArr[2]), AndroidUtilities.m51dp(fArr[3]), AndroidUtilities.m51dp(fArr[4]), AndroidUtilities.m51dp(fArr[5]), AndroidUtilities.m51dp(fArr[6]), AndroidUtilities.m51dp(fArr[7])};
        }

        private static boolean hasNonzeroRadii(float... fArr) {
            for (int i = 0; i < Math.min(8, fArr.length); i++) {
                if (fArr[i] > BitmapDescriptorFactory.HUE_RED) {
                    return true;
                }
            }
            return false;
        }

        public static int calcRippleColor(int i) {
            if (tempHSV == null) {
                tempHSV = new float[3];
            }
            Color.colorToHSV(i, tempHSV);
            float[] fArr = tempHSV;
            if (fArr[1] > 0.01f) {
                fArr[1] = Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, fArr[1] + (Theme.isCurrentThemeDark() ? 0.25f : -0.25f)));
                float[] fArr2 = tempHSV;
                fArr2[2] = Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, fArr2[2] + (Theme.isCurrentThemeDark() ? 0.05f : -0.05f)));
            } else {
                fArr[2] = Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, fArr[2] + (Theme.isCurrentThemeDark() ? 0.1f : -0.1f)));
            }
            return Color.HSVToColor(127, tempHSV);
        }
    }

    /* renamed from: org.telegram.ui.ActionBar.Theme$RippleRadMaskDrawable */
    /* loaded from: classes5.dex */
    public static class RippleRadMaskDrawable extends Drawable {
        private float[] radii;
        private Path path = new Path();
        boolean invalidatePath = true;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public RippleRadMaskDrawable(float f, float f2) {
            this.radii = r0;
            float m51dp = AndroidUtilities.m51dp(f);
            float[] fArr = {m51dp, m51dp, m51dp, m51dp};
            float[] fArr2 = this.radii;
            float m51dp2 = AndroidUtilities.m51dp(f2);
            fArr2[7] = m51dp2;
            fArr2[6] = m51dp2;
            fArr2[5] = m51dp2;
            fArr2[4] = m51dp2;
        }

        public RippleRadMaskDrawable(float f, float f2, float f3, float f4) {
            float[] fArr = new float[8];
            this.radii = fArr;
            float m51dp = AndroidUtilities.m51dp(f);
            fArr[1] = m51dp;
            fArr[0] = m51dp;
            float[] fArr2 = this.radii;
            float m51dp2 = AndroidUtilities.m51dp(f2);
            fArr2[3] = m51dp2;
            fArr2[2] = m51dp2;
            float[] fArr3 = this.radii;
            float m51dp3 = AndroidUtilities.m51dp(f3);
            fArr3[5] = m51dp3;
            fArr3[4] = m51dp3;
            float[] fArr4 = this.radii;
            float m51dp4 = AndroidUtilities.m51dp(f4);
            fArr4[7] = m51dp4;
            fArr4[6] = m51dp4;
        }

        public void setRadius(float f, float f2) {
            float[] fArr = this.radii;
            float m51dp = AndroidUtilities.m51dp(f);
            fArr[3] = m51dp;
            fArr[2] = m51dp;
            fArr[1] = m51dp;
            fArr[0] = m51dp;
            float[] fArr2 = this.radii;
            float m51dp2 = AndroidUtilities.m51dp(f2);
            fArr2[7] = m51dp2;
            fArr2[6] = m51dp2;
            fArr2[5] = m51dp2;
            fArr2[4] = m51dp2;
            this.invalidatePath = true;
            invalidateSelf();
        }

        public void setRadius(float f, float f2, float f3, float f4) {
            float[] fArr = this.radii;
            float m51dp = AndroidUtilities.m51dp(f);
            fArr[1] = m51dp;
            fArr[0] = m51dp;
            float[] fArr2 = this.radii;
            float m51dp2 = AndroidUtilities.m51dp(f2);
            fArr2[3] = m51dp2;
            fArr2[2] = m51dp2;
            float[] fArr3 = this.radii;
            float m51dp3 = AndroidUtilities.m51dp(f3);
            fArr3[5] = m51dp3;
            fArr3[4] = m51dp3;
            float[] fArr4 = this.radii;
            float m51dp4 = AndroidUtilities.m51dp(f4);
            fArr4[7] = m51dp4;
            fArr4[6] = m51dp4;
            this.invalidatePath = true;
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(Rect rect) {
            this.invalidatePath = true;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.invalidatePath) {
                this.invalidatePath = false;
                this.path.reset();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(getBounds());
                this.path.addRoundRect(rectF, this.radii, Path.Direction.CW);
            }
            canvas.drawPath(this.path, Theme.maskPaint);
        }
    }

    public static void setMaskDrawableRad(Drawable drawable, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 21 && (drawable instanceof RippleDrawable)) {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            int numberOfLayers = rippleDrawable.getNumberOfLayers();
            for (int i3 = 0; i3 < numberOfLayers; i3++) {
                Drawable drawable2 = rippleDrawable.getDrawable(i3);
                if (drawable2 instanceof RippleRadMaskDrawable) {
                    ((RippleRadMaskDrawable) drawable2).setRadius(i, i2);
                    return;
                }
            }
        }
    }

    public static void setMaskDrawableRad(Drawable drawable, float f, float f2, float f3, float f4) {
        if (Build.VERSION.SDK_INT >= 21 && (drawable instanceof RippleDrawable)) {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            int numberOfLayers = rippleDrawable.getNumberOfLayers();
            for (int i = 0; i < numberOfLayers; i++) {
                Drawable drawable2 = rippleDrawable.getDrawable(i);
                if (drawable2 instanceof RippleRadMaskDrawable) {
                    ((RippleRadMaskDrawable) drawable2).setRadius(f, f2, f3, f4);
                    return;
                }
            }
        }
    }

    public static Drawable createRadSelectorDrawable(int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 21) {
            maskPaint.setColor(-1);
            return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), null, new RippleRadMaskDrawable(i2, i3));
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, new ColorDrawable(i));
        stateListDrawable.addState(new int[]{16842913}, new ColorDrawable(i));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(0));
        return stateListDrawable;
    }

    public static Drawable createRadSelectorDrawable(int i, int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 21) {
            maskPaint.setColor(-1);
            return new RippleDrawable(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), null, new RippleRadMaskDrawable(i2, i3, i4, i5));
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, new ColorDrawable(i));
        stateListDrawable.addState(new int[]{16842913}, new ColorDrawable(i));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(0));
        return stateListDrawable;
    }

    public static void applyPreviousTheme() {
        ThemeInfo themeInfo;
        ThemeInfo themeInfo2 = previousTheme;
        if (themeInfo2 == null) {
            return;
        }
        hasPreviousTheme = false;
        if (isInNigthMode && (themeInfo = currentNightTheme) != null) {
            applyTheme(themeInfo, true, false, true);
        } else if (!isApplyingAccent) {
            applyTheme(themeInfo2, true, false, false);
        }
        isApplyingAccent = false;
        previousTheme = null;
        checkAutoNightThemeConditions();
    }

    public static void clearPreviousTheme() {
        if (previousTheme == null) {
            return;
        }
        hasPreviousTheme = false;
        isApplyingAccent = false;
        previousTheme = null;
    }

    private static void sortThemes() {
        Collections.sort(themes, Theme$$ExternalSyntheticLambda11.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sortThemes$1(ThemeInfo themeInfo, ThemeInfo themeInfo2) {
        if (themeInfo.pathToFile == null && themeInfo.assetName == null) {
            return -1;
        }
        if (themeInfo2.pathToFile == null && themeInfo2.assetName == null) {
            return 1;
        }
        return themeInfo.name.compareTo(themeInfo2.name);
    }

    public static void applyThemeTemporary(ThemeInfo themeInfo, boolean z) {
        previousTheme = getCurrentTheme();
        hasPreviousTheme = true;
        isApplyingAccent = z;
        applyTheme(themeInfo, false, false, false);
    }

    public static boolean hasCustomWallpaper() {
        return isApplyingAccent && currentTheme.overrideWallpaper != null;
    }

    public static boolean isCustomWallpaperColor() {
        return hasCustomWallpaper() && currentTheme.overrideWallpaper.color != 0;
    }

    public static void resetCustomWallpaper(boolean z) {
        if (z) {
            isApplyingAccent = false;
            reloadWallpaper();
            return;
        }
        currentTheme.setOverrideWallpaper(null);
    }

    public static ThemeInfo fillThemeValues(File file, String str, TLRPC$TL_theme tLRPC$TL_theme) {
        String[] split;
        try {
            ThemeInfo themeInfo = new ThemeInfo();
            themeInfo.name = str;
            themeInfo.info = tLRPC$TL_theme;
            themeInfo.pathToFile = file.getAbsolutePath();
            themeInfo.account = UserConfig.selectedAccount;
            String[] strArr = new String[1];
            checkIsDark(getThemeFileValues(new File(themeInfo.pathToFile), null, strArr), themeInfo);
            if (!TextUtils.isEmpty(strArr[0])) {
                String str2 = strArr[0];
                themeInfo.pathToWallpaper = new File(ApplicationLoader.getFilesDirFixed(), Utilities.MD5(str2) + ".wp").getAbsolutePath();
                Uri parse = Uri.parse(str2);
                themeInfo.slug = parse.getQueryParameter("slug");
                String queryParameter = parse.getQueryParameter("mode");
                if (queryParameter != null && (split = queryParameter.toLowerCase().split(" ")) != null && split.length > 0) {
                    for (int i = 0; i < split.length; i++) {
                        if ("blur".equals(split[i])) {
                            themeInfo.isBlured = true;
                        } else if ("motion".equals(split[i])) {
                            themeInfo.isMotion = true;
                        }
                    }
                }
                String queryParameter2 = parse.getQueryParameter("intensity");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    try {
                        String queryParameter3 = parse.getQueryParameter("bg_color");
                        if (!TextUtils.isEmpty(queryParameter3)) {
                            themeInfo.patternBgColor = Integer.parseInt(queryParameter3.substring(0, 6), 16) | (-16777216);
                            if (queryParameter3.length() >= 13 && AndroidUtilities.isValidWallChar(queryParameter3.charAt(6))) {
                                themeInfo.patternBgGradientColor1 = Integer.parseInt(queryParameter3.substring(7, 13), 16) | (-16777216);
                            }
                            if (queryParameter3.length() >= 20 && AndroidUtilities.isValidWallChar(queryParameter3.charAt(13))) {
                                themeInfo.patternBgGradientColor2 = Integer.parseInt(queryParameter3.substring(14, 20), 16) | (-16777216);
                            }
                            if (queryParameter3.length() == 27 && AndroidUtilities.isValidWallChar(queryParameter3.charAt(20))) {
                                themeInfo.patternBgGradientColor3 = Integer.parseInt(queryParameter3.substring(21), 16) | (-16777216);
                            }
                        }
                    } catch (Exception unused) {
                    }
                    try {
                        String queryParameter4 = parse.getQueryParameter("rotation");
                        if (!TextUtils.isEmpty(queryParameter4)) {
                            themeInfo.patternBgGradientRotation = Utilities.parseInt((CharSequence) queryParameter4).intValue();
                        }
                    } catch (Exception unused2) {
                    }
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        themeInfo.patternIntensity = Utilities.parseInt((CharSequence) queryParameter2).intValue();
                    }
                    if (themeInfo.patternIntensity == 0) {
                        themeInfo.patternIntensity = 50;
                    }
                }
            } else {
                themedWallpaperLink = null;
            }
            return themeInfo;
        } catch (Exception e) {
            FileLog.m45e(e);
            return null;
        }
    }

    public static ThemeInfo applyThemeFile(File file, String str, TLRPC$TL_theme tLRPC$TL_theme, boolean z) {
        File file2;
        String str2;
        try {
            if (!str.toLowerCase().endsWith(".attheme")) {
                str = str + ".attheme";
            }
            if (z) {
                NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.goingToPreviewTheme, new Object[0]);
                ThemeInfo themeInfo = new ThemeInfo();
                themeInfo.name = str;
                themeInfo.info = tLRPC$TL_theme;
                themeInfo.pathToFile = file.getAbsolutePath();
                themeInfo.account = UserConfig.selectedAccount;
                applyThemeTemporary(themeInfo, false);
                return themeInfo;
            }
            if (tLRPC$TL_theme != null) {
                str2 = "remote" + tLRPC$TL_theme.f1631id;
                file2 = new File(ApplicationLoader.getFilesDirFixed(), str2 + ".attheme");
            } else {
                file2 = new File(ApplicationLoader.getFilesDirFixed(), str);
                str2 = str;
            }
            if (!AndroidUtilities.copyFile(file, file2)) {
                applyPreviousTheme();
                return null;
            }
            previousTheme = null;
            hasPreviousTheme = false;
            isApplyingAccent = false;
            ThemeInfo themeInfo2 = themesDict.get(str2);
            if (themeInfo2 == null) {
                themeInfo2 = new ThemeInfo();
                themeInfo2.name = str;
                themeInfo2.account = UserConfig.selectedAccount;
                themes.add(themeInfo2);
                otherThemes.add(themeInfo2);
                sortThemes();
            } else {
                themesDict.remove(str2);
            }
            themeInfo2.info = tLRPC$TL_theme;
            themeInfo2.pathToFile = file2.getAbsolutePath();
            themesDict.put(themeInfo2.getKey(), themeInfo2);
            saveOtherThemes(true);
            applyTheme(themeInfo2, true, true, false);
            return themeInfo2;
        } catch (Exception e) {
            FileLog.m45e(e);
            return null;
        }
    }

    public static ThemeInfo getTheme(String str) {
        return themesDict.get(str);
    }

    public static void applyTheme(ThemeInfo themeInfo) {
        applyTheme(themeInfo, true, true, false);
    }

    public static void applyTheme(ThemeInfo themeInfo, boolean z) {
        applyTheme(themeInfo, true, z);
    }

    public static void applyThemeInBackground(ThemeInfo themeInfo, boolean z, Runnable runnable) {
        applyThemeInBackground(themeInfo, true, true, z, runnable);
    }

    public static void applyTheme(ThemeInfo themeInfo, boolean z, boolean z2) {
        applyTheme(themeInfo, z, true, z2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
        org.telegram.messenger.SharedConfig.setPinnedPlayerThemeOverridden(false);
        org.telegram.messenger.SharedConfig.setPinnedPlayerNightThemeEnabled(r7.isDark());
     */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01db A[Catch: Exception -> 0x01f2, TryCatch #5 {Exception -> 0x01f2, blocks: (B:8:0x000d, B:11:0x0014, B:16:0x001d, B:17:0x002b, B:86:0x01cf, B:88:0x01d3, B:90:0x01db, B:91:0x01ec, B:19:0x003c, B:22:0x004a, B:23:0x005c, B:25:0x0063, B:27:0x0077, B:29:0x0083, B:31:0x0089, B:33:0x0093, B:39:0x00cf, B:84:0x01c9, B:26:0x006a, B:40:0x00d1, B:42:0x00e7, B:44:0x00f3, B:47:0x00f7, B:49:0x00fa, B:51:0x0104, B:55:0x0113, B:52:0x0107, B:54:0x0111, B:56:0x0116, B:57:0x0127, B:59:0x0133, B:61:0x014b, B:63:0x0155, B:64:0x0161, B:66:0x0169, B:68:0x0173, B:69:0x0180, B:71:0x0188, B:73:0x0192, B:74:0x019f, B:76:0x01ab), top: B:114:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void applyTheme(org.telegram.p048ui.ActionBar.Theme.ThemeInfo r7, boolean r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.applyTheme(org.telegram.ui.ActionBar.Theme$ThemeInfo, boolean, boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
        if (r10 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0066, code lost:
        r0 = org.telegram.messenger.MessagesController.getGlobalMainSettings().edit();
        r0.putString("theme", r9.getKey());
        r0.apply();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void applyThemeInBackground(final org.telegram.p048ui.ActionBar.Theme.ThemeInfo r9, final boolean r10, boolean r11, final boolean r12, final java.lang.Runnable r13) {
        /*
            if (r9 != 0) goto L8
            if (r13 == 0) goto L7
            r13.run()
        L7:
            return
        L8:
            org.telegram.ui.Components.ThemeEditorView r11 = org.telegram.p048ui.Components.ThemeEditorView.getInstance()
            if (r11 == 0) goto L11
            r11.destroy()
        L11:
            r11 = 0
            java.lang.String r0 = r9.pathToFile     // Catch: java.lang.Exception -> La3
            java.lang.String r1 = "theme"
            r2 = 0
            if (r0 != 0) goto L62
            java.lang.String r0 = r9.assetName     // Catch: java.lang.Exception -> La3
            if (r0 == 0) goto L1e
            goto L62
        L1e:
            if (r12 != 0) goto L30
            if (r10 == 0) goto L30
            android.content.SharedPreferences r0 = org.telegram.messenger.MessagesController.getGlobalMainSettings()     // Catch: java.lang.Exception -> La3
            android.content.SharedPreferences$Editor r0 = r0.edit()     // Catch: java.lang.Exception -> La3
            r0.remove(r1)     // Catch: java.lang.Exception -> La3
            r0.apply()     // Catch: java.lang.Exception -> La3
        L30:
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = org.telegram.p048ui.ActionBar.Theme.currentColorsNoAccent     // Catch: java.lang.Exception -> La3
            r0.clear()     // Catch: java.lang.Exception -> La3
            org.telegram.p048ui.ActionBar.Theme.themedWallpaperFileOffset = r11     // Catch: java.lang.Exception -> La3
            org.telegram.p048ui.ActionBar.Theme.themedWallpaperLink = r2     // Catch: java.lang.Exception -> La3
            org.telegram.p048ui.ActionBar.Theme.wallpaper = r2     // Catch: java.lang.Exception -> La3
            org.telegram.p048ui.ActionBar.Theme.themedWallpaper = r2     // Catch: java.lang.Exception -> La3
            if (r12 != 0) goto L5c
            org.telegram.ui.ActionBar.Theme$ThemeInfo r0 = org.telegram.p048ui.ActionBar.Theme.previousTheme     // Catch: java.lang.Exception -> La3
            if (r0 != 0) goto L5c
            org.telegram.p048ui.ActionBar.Theme.currentDayTheme = r9     // Catch: java.lang.Exception -> La3
            boolean r0 = isCurrentThemeNight()     // Catch: java.lang.Exception -> La3
            if (r0 == 0) goto L5c
            r0 = 2000(0x7d0, float:2.803E-42)
            org.telegram.p048ui.ActionBar.Theme.switchNightThemeDelay = r0     // Catch: java.lang.Exception -> La3
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Exception -> La3
            org.telegram.p048ui.ActionBar.Theme.lastDelayUpdateTime = r0     // Catch: java.lang.Exception -> La3
            org.telegram.messenger.MessagesController$$ExternalSyntheticLambda237 r0 = org.telegram.messenger.MessagesController$$ExternalSyntheticLambda237.INSTANCE     // Catch: java.lang.Exception -> La3
            r1 = 2100(0x834, double:1.0375E-320)
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r0, r1)     // Catch: java.lang.Exception -> La3
        L5c:
            org.telegram.p048ui.ActionBar.Theme.currentTheme = r9     // Catch: java.lang.Exception -> La3
            refreshThemeColors()     // Catch: java.lang.Exception -> La3
            goto La7
        L62:
            if (r12 != 0) goto L78
            if (r10 == 0) goto L78
            android.content.SharedPreferences r0 = org.telegram.messenger.MessagesController.getGlobalMainSettings()     // Catch: java.lang.Exception -> La3
            android.content.SharedPreferences$Editor r0 = r0.edit()     // Catch: java.lang.Exception -> La3
            java.lang.String r3 = r9.getKey()     // Catch: java.lang.Exception -> La3
            r0.putString(r1, r3)     // Catch: java.lang.Exception -> La3
            r0.apply()     // Catch: java.lang.Exception -> La3
        L78:
            r0 = 1
            java.lang.String[] r0 = new java.lang.String[r0]     // Catch: java.lang.Exception -> La3
            org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda9 r1 = new org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda9     // Catch: java.lang.Exception -> La3
            r3 = r1
            r4 = r0
            r5 = r9
            r6 = r12
            r7 = r10
            r8 = r13
            r3.<init>()     // Catch: java.lang.Exception -> La3
            java.lang.String r3 = r9.assetName     // Catch: java.lang.Exception -> La3
            if (r3 == 0) goto L93
            org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda12 r0 = new org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda12     // Catch: java.lang.Exception -> La3
            r0.<init>()     // Catch: java.lang.Exception -> La3
            getThemeFileValuesInBackground(r2, r3, r2, r0)     // Catch: java.lang.Exception -> La3
            goto La2
        L93:
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> La3
            java.lang.String r4 = r9.pathToFile     // Catch: java.lang.Exception -> La3
            r3.<init>(r4)     // Catch: java.lang.Exception -> La3
            org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda13 r4 = new org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda13     // Catch: java.lang.Exception -> La3
            r4.<init>()     // Catch: java.lang.Exception -> La3
            getThemeFileValuesInBackground(r3, r2, r0, r4)     // Catch: java.lang.Exception -> La3
        La2:
            return
        La3:
            r0 = move-exception
            org.telegram.messenger.FileLog.m45e(r0)
        La7:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r0 = org.telegram.p048ui.ActionBar.Theme.previousTheme
            if (r0 != 0) goto Lbe
            if (r10 == 0) goto Lbe
            boolean r10 = org.telegram.p048ui.ActionBar.Theme.switchingNightTheme
            if (r10 != 0) goto Lbe
            int r10 = r9.account
            org.telegram.messenger.MessagesController r10 = org.telegram.messenger.MessagesController.getInstance(r10)
            org.telegram.ui.ActionBar.Theme$ThemeAccent r0 = r9.getAccent(r11)
            r10.saveTheme(r9, r0, r12, r11)
        Lbe:
            if (r13 == 0) goto Lc3
            r13.run()
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.applyThemeInBackground(org.telegram.ui.ActionBar.Theme$ThemeInfo, boolean, boolean, boolean, java.lang.Runnable):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyThemeInBackground$2(String[] strArr, ThemeInfo themeInfo, boolean z, boolean z2, Runnable runnable) {
        String[] split;
        try {
            Integer num = currentColorsNoAccent.get("wallpaperFileOffset");
            themedWallpaperFileOffset = num != null ? num.intValue() : -1;
            if (!TextUtils.isEmpty(strArr[0])) {
                themedWallpaperLink = strArr[0];
                String absolutePath = new File(ApplicationLoader.getFilesDirFixed(), Utilities.MD5(themedWallpaperLink) + ".wp").getAbsolutePath();
                try {
                    String str = themeInfo.pathToWallpaper;
                    if (str != null && !str.equals(absolutePath)) {
                        new File(themeInfo.pathToWallpaper).delete();
                    }
                } catch (Exception unused) {
                }
                themeInfo.pathToWallpaper = absolutePath;
                Uri parse = Uri.parse(themedWallpaperLink);
                themeInfo.slug = parse.getQueryParameter("slug");
                String queryParameter = parse.getQueryParameter("mode");
                if (queryParameter != null && (split = queryParameter.toLowerCase().split(" ")) != null && split.length > 0) {
                    for (int i = 0; i < split.length; i++) {
                        if ("blur".equals(split[i])) {
                            themeInfo.isBlured = true;
                        } else if ("motion".equals(split[i])) {
                            themeInfo.isMotion = true;
                        }
                    }
                }
                Utilities.parseInt((CharSequence) parse.getQueryParameter("intensity")).intValue();
                themeInfo.patternBgGradientRotation = 45;
                try {
                    String queryParameter2 = parse.getQueryParameter("bg_color");
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        themeInfo.patternBgColor = Integer.parseInt(queryParameter2.substring(0, 6), 16) | (-16777216);
                        if (queryParameter2.length() >= 13 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(6))) {
                            themeInfo.patternBgGradientColor1 = Integer.parseInt(queryParameter2.substring(7, 13), 16) | (-16777216);
                        }
                        if (queryParameter2.length() >= 20 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(13))) {
                            themeInfo.patternBgGradientColor2 = Integer.parseInt(queryParameter2.substring(14, 20), 16) | (-16777216);
                        }
                        if (queryParameter2.length() == 27 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(20))) {
                            themeInfo.patternBgGradientColor3 = Integer.parseInt(queryParameter2.substring(21), 16) | (-16777216);
                        }
                    }
                } catch (Exception unused2) {
                }
                try {
                    String queryParameter3 = parse.getQueryParameter("rotation");
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        themeInfo.patternBgGradientRotation = Utilities.parseInt((CharSequence) queryParameter3).intValue();
                    }
                } catch (Exception unused3) {
                }
            } else {
                try {
                    if (themeInfo.pathToWallpaper != null) {
                        new File(themeInfo.pathToWallpaper).delete();
                    }
                } catch (Exception unused4) {
                }
                themeInfo.pathToWallpaper = null;
                themedWallpaperLink = null;
            }
            if (!z && previousTheme == null) {
                currentDayTheme = themeInfo;
                if (isCurrentThemeNight()) {
                    switchNightThemeDelay = 2000;
                    lastDelayUpdateTime = SystemClock.elapsedRealtime();
                    AndroidUtilities.runOnUIThread(MessagesController$$ExternalSyntheticLambda237.INSTANCE, 2100L);
                }
            }
            currentTheme = themeInfo;
            refreshThemeColors();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        if (previousTheme == null && z2 && !switchingNightTheme) {
            MessagesController.getInstance(themeInfo.account).saveTheme(themeInfo, themeInfo.getAccent(false), z, false);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyThemeInBackground$3(Runnable runnable, HashMap hashMap) {
        currentColorsNoAccent = hashMap;
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyThemeInBackground$4(Runnable runnable, HashMap hashMap) {
        currentColorsNoAccent = hashMap;
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean useBlackText(int i, int i2) {
        float red = Color.red(i) / 255.0f;
        float green = Color.green(i) / 255.0f;
        float blue = Color.blue(i) / 255.0f;
        return ((((red * 0.5f) + ((((float) Color.red(i2)) / 255.0f) * 0.5f)) * 0.2126f) + (((green * 0.5f) + ((((float) Color.green(i2)) / 255.0f) * 0.5f)) * 0.7152f)) + (((blue * 0.5f) + ((((float) Color.blue(i2)) / 255.0f) * 0.5f)) * 0.0722f) > 0.705f || ((red * 0.2126f) + (green * 0.7152f)) + (blue * 0.0722f) > 0.705f;
    }

    public static void refreshThemeColors() {
        refreshThemeColors(false, false);
    }

    public static void refreshThemeColors(boolean z, boolean z2) {
        currentColors.clear();
        currentColors.putAll(currentColorsNoAccent);
        shouldDrawGradientIcons = true;
        ThemeAccent accent = currentTheme.getAccent(false);
        if (accent != null) {
            shouldDrawGradientIcons = accent.fillAccentColors(currentColorsNoAccent, currentColors);
        }
        if (!z2) {
            reloadWallpaper();
        }
        applyCommonTheme();
        applyDialogsTheme();
        applyProfileTheme();
        applyChatTheme(false, z);
        final boolean z3 = !hasPreviousTheme;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                Theme.lambda$refreshThemeColors$5(z3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$refreshThemeColors$5(boolean z) {
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didSetNewTheme, Boolean.FALSE, Boolean.valueOf(z));
    }

    public static int changeColorAccent(ThemeInfo themeInfo, int i, int i2) {
        int i3;
        if (i == 0 || (i3 = themeInfo.accentBaseColor) == 0 || i == i3 || (themeInfo.firstAccentIsDefault && themeInfo.currentAccentId == DEFALT_THEME_ACCENT_ID)) {
            return i2;
        }
        float[] tempHsv = getTempHsv(3);
        float[] tempHsv2 = getTempHsv(4);
        Color.colorToHSV(themeInfo.accentBaseColor, tempHsv);
        Color.colorToHSV(i, tempHsv2);
        return changeColorAccent(tempHsv, tempHsv2, i2, themeInfo.isDark());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float[] getTempHsv(int i) {
        ThreadLocal<float[]> threadLocal;
        if (i == 1) {
            threadLocal = hsvTemp1Local;
        } else if (i == 2) {
            threadLocal = hsvTemp2Local;
        } else if (i == 3) {
            threadLocal = hsvTemp3Local;
        } else if (i == 4) {
            threadLocal = hsvTemp4Local;
        } else {
            threadLocal = hsvTemp5Local;
        }
        float[] fArr = threadLocal.get();
        if (fArr == null) {
            float[] fArr2 = new float[3];
            threadLocal.set(fArr2);
            return fArr2;
        }
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getAccentColor(float[] fArr, int i, int i2) {
        float[] tempHsv = getTempHsv(3);
        float[] tempHsv2 = getTempHsv(4);
        Color.colorToHSV(i, tempHsv);
        Color.colorToHSV(i2, tempHsv2);
        float min = Math.min((tempHsv[1] * 1.5f) / fArr[1], 1.0f);
        tempHsv[0] = (tempHsv2[0] - tempHsv[0]) + fArr[0];
        tempHsv[1] = (tempHsv2[1] * fArr[1]) / tempHsv[1];
        tempHsv[2] = ((((tempHsv2[2] / tempHsv[2]) + min) - 1.0f) * fArr[2]) / min;
        return tempHsv[2] < 0.3f ? i2 : Color.HSVToColor(255, tempHsv);
    }

    public static int changeColorAccent(int i) {
        ThemeAccent accent = currentTheme.getAccent(false);
        return changeColorAccent(currentTheme, accent != null ? accent.accentColor : 0, i);
    }

    public static int changeColorAccent(float[] fArr, float[] fArr2, int i, boolean z) {
        if (tmpHSV5 == null) {
            tmpHSV5 = new float[3];
        }
        float[] fArr3 = tmpHSV5;
        Color.colorToHSV(i, fArr3);
        boolean z2 = false;
        if (Math.min(abs(fArr3[0] - fArr[0]), abs((fArr3[0] - fArr[0]) - 360.0f)) > 30.0f) {
            return i;
        }
        float min = Math.min((fArr3[1] * 1.5f) / fArr[1], 1.0f);
        fArr3[0] = (fArr3[0] + fArr2[0]) - fArr[0];
        fArr3[1] = (fArr3[1] * fArr2[1]) / fArr[1];
        fArr3[2] = fArr3[2] * ((1.0f - min) + ((min * fArr2[2]) / fArr[2]));
        int HSVToColor = Color.HSVToColor(Color.alpha(i), fArr3);
        float computePerceivedBrightness = AndroidUtilities.computePerceivedBrightness(i);
        float computePerceivedBrightness2 = AndroidUtilities.computePerceivedBrightness(HSVToColor);
        if (!z ? computePerceivedBrightness < computePerceivedBrightness2 : computePerceivedBrightness > computePerceivedBrightness2) {
            z2 = true;
        }
        return z2 ? changeBrightness(HSVToColor, ((0.39999998f * computePerceivedBrightness) / computePerceivedBrightness2) + 0.6f) : HSVToColor;
    }

    private static int changeBrightness(int i, float f) {
        int red = (int) (Color.red(i) * f);
        int green = (int) (Color.green(i) * f);
        int blue = (int) (Color.blue(i) * f);
        return Color.argb(Color.alpha(i), red < 0 ? 0 : Math.min(red, 255), green < 0 ? 0 : Math.min(green, 255), blue >= 0 ? Math.min(blue, 255) : 0);
    }

    public static boolean deleteThemeAccent(ThemeInfo themeInfo, ThemeAccent themeAccent, boolean z) {
        boolean z2 = false;
        if (themeAccent == null || themeInfo == null || themeInfo.themeAccents == null) {
            return false;
        }
        boolean z3 = themeAccent.f1656id == themeInfo.currentAccentId;
        File pathToWallpaper = themeAccent.getPathToWallpaper();
        if (pathToWallpaper != null) {
            pathToWallpaper.delete();
        }
        themeInfo.themeAccentsMap.remove(themeAccent.f1656id);
        themeInfo.themeAccents.remove(themeAccent);
        TLRPC$TL_theme tLRPC$TL_theme = themeAccent.info;
        if (tLRPC$TL_theme != null) {
            themeInfo.accentsByThemeId.remove(tLRPC$TL_theme.f1631id);
        }
        OverrideWallpaperInfo overrideWallpaperInfo = themeAccent.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            overrideWallpaperInfo.delete();
        }
        if (z3) {
            themeInfo.setCurrentAccentId(themeInfo.themeAccents.get(0).f1656id);
        }
        if (z) {
            saveThemeAccents(themeInfo, true, false, false, false);
            if (themeAccent.info != null) {
                MessagesController messagesController = MessagesController.getInstance(themeAccent.account);
                if (z3 && themeInfo == currentNightTheme) {
                    z2 = true;
                }
                messagesController.saveTheme(themeInfo, themeAccent, z2, true);
            }
        }
        return z3;
    }

    public static void saveThemeAccents(ThemeInfo themeInfo, boolean z, boolean z2, boolean z3, boolean z4) {
        saveThemeAccents(themeInfo, z, z2, z3, z4, false);
    }

    public static void saveThemeAccents(ThemeInfo themeInfo, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        if (z) {
            SharedPreferences.Editor edit = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit();
            if (!z3) {
                int size = themeInfo.themeAccents.size();
                int max = Math.max(0, size - themeInfo.defaultAccentCount);
                SerializedData serializedData = new SerializedData(((max * 16) + 2) * 4);
                serializedData.writeInt32(9);
                serializedData.writeInt32(max);
                for (int i = 0; i < size; i++) {
                    ThemeAccent themeAccent = themeInfo.themeAccents.get(i);
                    int i2 = themeAccent.f1656id;
                    if (i2 >= 100) {
                        serializedData.writeInt32(i2);
                        serializedData.writeInt32(themeAccent.accentColor);
                        serializedData.writeInt32(themeAccent.accentColor2);
                        serializedData.writeInt32(themeAccent.myMessagesAccentColor);
                        serializedData.writeInt32(themeAccent.myMessagesGradientAccentColor1);
                        serializedData.writeInt32(themeAccent.myMessagesGradientAccentColor2);
                        serializedData.writeInt32(themeAccent.myMessagesGradientAccentColor3);
                        serializedData.writeBool(themeAccent.myMessagesAnimated);
                        serializedData.writeInt64(themeAccent.backgroundOverrideColor);
                        serializedData.writeInt64(themeAccent.backgroundGradientOverrideColor1);
                        serializedData.writeInt64(themeAccent.backgroundGradientOverrideColor2);
                        serializedData.writeInt64(themeAccent.backgroundGradientOverrideColor3);
                        serializedData.writeInt32(themeAccent.backgroundRotation);
                        serializedData.writeInt64(0L);
                        serializedData.writeDouble(themeAccent.patternIntensity);
                        serializedData.writeBool(themeAccent.patternMotion);
                        serializedData.writeString(themeAccent.patternSlug);
                        serializedData.writeBool(themeAccent.info != null);
                        if (themeAccent.info != null) {
                            serializedData.writeInt32(themeAccent.account);
                            themeAccent.info.serializeToStream(serializedData);
                        }
                    }
                }
                edit.putString("accents_" + themeInfo.assetName, Base64.encodeToString(serializedData.toByteArray(), 3));
                if (!z5) {
                    NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.themeAccentListUpdated, new Object[0]);
                }
                if (z4) {
                    MessagesController.getInstance(UserConfig.selectedAccount).saveThemeToServer(themeInfo, themeInfo.getAccent(false));
                }
            }
            edit.putInt("accent_current_" + themeInfo.assetName, themeInfo.currentAccentId);
            edit.commit();
        } else {
            if (themeInfo.prevAccentId != -1) {
                if (z2) {
                    ThemeAccent themeAccent2 = themeInfo.themeAccentsMap.get(themeInfo.currentAccentId);
                    themeInfo.themeAccentsMap.remove(themeAccent2.f1656id);
                    themeInfo.themeAccents.remove(themeAccent2);
                    TLRPC$TL_theme tLRPC$TL_theme = themeAccent2.info;
                    if (tLRPC$TL_theme != null) {
                        themeInfo.accentsByThemeId.remove(tLRPC$TL_theme.f1631id);
                    }
                }
                themeInfo.currentAccentId = themeInfo.prevAccentId;
                ThemeAccent accent = themeInfo.getAccent(false);
                if (accent != null) {
                    themeInfo.overrideWallpaper = accent.overrideWallpaper;
                } else {
                    themeInfo.overrideWallpaper = null;
                }
            }
            if (currentTheme == themeInfo) {
                refreshThemeColors();
            }
        }
        themeInfo.prevAccentId = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void saveOtherThemes(boolean z) {
        saveOtherThemes(z, false);
    }

    private static void saveOtherThemes(boolean z, boolean z2) {
        ArrayList<ThemeAccent> arrayList;
        int i = 0;
        SharedPreferences.Editor edit = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit();
        if (z) {
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < otherThemes.size(); i2++) {
                JSONObject saveJson = otherThemes.get(i2).getSaveJson();
                if (saveJson != null) {
                    jSONArray.put(saveJson);
                }
            }
            edit.putString("themes2", jSONArray.toString());
        }
        int i3 = 0;
        while (i3 < 5) {
            StringBuilder sb = new StringBuilder();
            sb.append("2remoteThemesHash");
            Object obj = "";
            sb.append(i3 != 0 ? Integer.valueOf(i3) : "");
            edit.putLong(sb.toString(), remoteThemesHash[i3]);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("lastLoadingThemesTime");
            if (i3 != 0) {
                obj = Integer.valueOf(i3);
            }
            sb2.append(obj);
            edit.putInt(sb2.toString(), lastLoadingThemesTime[i3]);
            i3++;
        }
        edit.putInt("lastLoadingCurrentThemeTime", lastLoadingCurrentThemeTime);
        edit.commit();
        if (z) {
            while (i < 5) {
                ThemeInfo themeInfo = themesDict.get(i != 0 ? i != 1 ? i != 2 ? i != 3 ? "Night" : "Day" : "Arctic Blue" : "Dark Blue" : "Blue");
                if (themeInfo != null && (arrayList = themeInfo.themeAccents) != null && !arrayList.isEmpty()) {
                    saveThemeAccents(themeInfo, true, false, false, false, z2);
                }
                i++;
            }
        }
    }

    public static HashMap<String, Integer> getDefaultColors() {
        return defaultColors;
    }

    public static ThemeInfo getPreviousTheme() {
        return previousTheme;
    }

    public static String getCurrentNightThemeName() {
        ThemeInfo themeInfo = currentNightTheme;
        if (themeInfo == null) {
            return "";
        }
        String name = themeInfo.getName();
        return name.toLowerCase().endsWith(".attheme") ? name.substring(0, name.lastIndexOf(46)) : name;
    }

    public static ThemeInfo getCurrentTheme() {
        ThemeInfo themeInfo = currentDayTheme;
        return themeInfo != null ? themeInfo : defaultTheme;
    }

    public static ThemeInfo getCurrentNightTheme() {
        return currentNightTheme;
    }

    public static boolean isCurrentThemeNight() {
        return currentTheme == currentNightTheme;
    }

    public static boolean isCurrentThemeDark() {
        return currentTheme.isDark();
    }

    public static ThemeInfo getActiveTheme() {
        return currentTheme;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getAutoNightSwitchThemeDelay() {
        return Math.abs(lastThemeSwitchTime - SystemClock.elapsedRealtime()) >= 12000 ? 1800L : 12000L;
    }

    public static void setCurrentNightTheme(ThemeInfo themeInfo) {
        boolean z = currentTheme == currentNightTheme;
        currentNightTheme = themeInfo;
        if (z) {
            applyDayNightThemeMaybe(true);
        }
    }

    public static void checkAutoNightThemeConditions() {
        checkAutoNightThemeConditions(false);
    }

    public static void cancelAutoNightThemeCallbacks() {
        if (selectedAutoNightType != 2) {
            if (switchNightRunnableScheduled) {
                switchNightRunnableScheduled = false;
                AndroidUtilities.cancelRunOnUIThread(switchNightBrightnessRunnable);
            }
            if (switchDayRunnableScheduled) {
                switchDayRunnableScheduled = false;
                AndroidUtilities.cancelRunOnUIThread(switchDayBrightnessRunnable);
            }
            if (lightSensorRegistered) {
                lastBrightnessValue = 1.0f;
                sensorManager.unregisterListener(ambientSensorListener, lightSensor);
                lightSensorRegistered = false;
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m48d("light sensor unregistered");
                }
            }
        }
    }

    private static int needSwitchToTheme() {
        Sensor sensor;
        SensorEventListener sensorEventListener;
        int i;
        int i2;
        int i3 = selectedAutoNightType;
        if (i3 == 1) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            int i4 = (calendar.get(11) * 60) + calendar.get(12);
            if (autoNightScheduleByLocation) {
                int i5 = calendar.get(5);
                if (autoNightLastSunCheckDay != i5) {
                    double d = autoNightLocationLatitude;
                    if (d != 10000.0d) {
                        double d2 = autoNightLocationLongitude;
                        if (d2 != 10000.0d) {
                            int[] calculateSunriseSunset = SunDate.calculateSunriseSunset(d, d2);
                            autoNightSunriseTime = calculateSunriseSunset[0];
                            autoNightSunsetTime = calculateSunriseSunset[1];
                            autoNightLastSunCheckDay = i5;
                            saveAutoNightThemeConfig();
                        }
                    }
                }
                i = autoNightSunsetTime;
                i2 = autoNightSunriseTime;
            } else {
                i = autoNightDayStartTime;
                i2 = autoNightDayEndTime;
            }
            return i < i2 ? (i > i4 || i4 > i2) ? 1 : 2 : ((i > i4 || i4 > 1440) && (i4 < 0 || i4 > i2)) ? 1 : 2;
        }
        if (i3 == 2) {
            if (lightSensor == null) {
                SensorManager sensorManager2 = (SensorManager) ApplicationLoader.applicationContext.getSystemService("sensor");
                sensorManager = sensorManager2;
                lightSensor = sensorManager2.getDefaultSensor(5);
            }
            if (!lightSensorRegistered && (sensor = lightSensor) != null && (sensorEventListener = ambientSensorListener) != null) {
                sensorManager.registerListener(sensorEventListener, sensor, 500000);
                lightSensorRegistered = true;
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m48d("light sensor registered");
                }
            }
            if (lastBrightnessValue <= autoNightBrighnessThreshold) {
                if (!switchNightRunnableScheduled) {
                    return 2;
                }
            } else if (!switchDayRunnableScheduled) {
                return 1;
            }
        } else if (i3 == 3) {
            int i6 = ApplicationLoader.applicationContext.getResources().getConfiguration().uiMode & 48;
            if (i6 == 0 || i6 == 16) {
                return 1;
            }
            if (i6 == 32) {
                return 2;
            }
        } else if (i3 == 0) {
            return 1;
        }
        return 0;
    }

    public static void setChangingWallpaper(boolean z) {
        changingWallpaper = z;
        if (z) {
            return;
        }
        checkAutoNightThemeConditions(false);
    }

    public static void checkAutoNightThemeConditions(boolean z) {
        if (previousTheme != null || changingWallpaper) {
            return;
        }
        if (!z && switchNightThemeDelay > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - lastDelayUpdateTime;
            lastDelayUpdateTime = elapsedRealtime;
            int i = (int) (switchNightThemeDelay - j);
            switchNightThemeDelay = i;
            if (i > 0) {
                return;
            }
        }
        if (z) {
            if (switchNightRunnableScheduled) {
                switchNightRunnableScheduled = false;
                AndroidUtilities.cancelRunOnUIThread(switchNightBrightnessRunnable);
            }
            if (switchDayRunnableScheduled) {
                switchDayRunnableScheduled = false;
                AndroidUtilities.cancelRunOnUIThread(switchDayBrightnessRunnable);
            }
        }
        cancelAutoNightThemeCallbacks();
        int needSwitchToTheme = needSwitchToTheme();
        if (needSwitchToTheme != 0) {
            applyDayNightThemeMaybe(needSwitchToTheme == 2);
        }
        if (z) {
            lastThemeSwitchTime = 0L;
        }
    }

    public static void applyDayNightThemeMaybe(boolean z) {
        if (previousTheme != null) {
            return;
        }
        if (z) {
            ThemeInfo themeInfo = currentTheme;
            ThemeInfo themeInfo2 = currentNightTheme;
            if (themeInfo != themeInfo2) {
                if (themeInfo == null || !(themeInfo2 == null || themeInfo.isDark() == currentNightTheme.isDark())) {
                    isInNigthMode = true;
                    lastThemeSwitchTime = SystemClock.elapsedRealtime();
                    switchingNightTheme = true;
                    NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needSetDayNightTheme, currentNightTheme, Boolean.TRUE, null, -1);
                    switchingNightTheme = false;
                    return;
                }
                return;
            }
            return;
        }
        ThemeInfo themeInfo3 = currentTheme;
        ThemeInfo themeInfo4 = currentDayTheme;
        if (themeInfo3 != themeInfo4) {
            if (themeInfo3 == null || !(themeInfo4 == null || themeInfo3.isLight() == currentDayTheme.isLight())) {
                isInNigthMode = false;
                lastThemeSwitchTime = SystemClock.elapsedRealtime();
                switchingNightTheme = true;
                NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needSetDayNightTheme, currentDayTheme, Boolean.TRUE, null, -1);
                switchingNightTheme = false;
            }
        }
    }

    public static boolean deleteTheme(ThemeInfo themeInfo) {
        boolean z = false;
        if (themeInfo.pathToFile == null) {
            return false;
        }
        if (currentTheme == themeInfo) {
            applyTheme(defaultTheme, true, false, false);
            z = true;
        }
        if (themeInfo == currentNightTheme) {
            currentNightTheme = themesDict.get("Dark Blue");
        }
        themeInfo.removeObservers();
        otherThemes.remove(themeInfo);
        themesDict.remove(themeInfo.name);
        OverrideWallpaperInfo overrideWallpaperInfo = themeInfo.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            overrideWallpaperInfo.delete();
        }
        themes.remove(themeInfo);
        new File(themeInfo.pathToFile).delete();
        saveOtherThemes(true);
        return z;
    }

    public static ThemeInfo createNewTheme(String str) {
        ThemeInfo themeInfo = new ThemeInfo();
        File filesDirFixed = ApplicationLoader.getFilesDirFixed();
        themeInfo.pathToFile = new File(filesDirFixed, "theme" + Utilities.random.nextLong() + ".attheme").getAbsolutePath();
        themeInfo.name = str;
        themedWallpaperLink = getWallpaperUrl(currentTheme.overrideWallpaper);
        themeInfo.account = UserConfig.selectedAccount;
        saveCurrentTheme(themeInfo, true, true, false);
        return themeInfo;
    }

    private static String getWallpaperUrl(OverrideWallpaperInfo overrideWallpaperInfo) {
        String str;
        if (overrideWallpaperInfo == null || TextUtils.isEmpty(overrideWallpaperInfo.slug) || overrideWallpaperInfo.slug.equals("d")) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (overrideWallpaperInfo.isBlurred) {
            sb.append("blur");
        }
        if (overrideWallpaperInfo.isMotion) {
            if (sb.length() > 0) {
                sb.append("+");
            }
            sb.append("motion");
        }
        int i = overrideWallpaperInfo.color;
        if (i == 0) {
            str = "https://attheme.org?slug=" + overrideWallpaperInfo.slug;
        } else {
            String lowerCase = String.format("%02x%02x%02x", Integer.valueOf(((byte) (i >> 16)) & 255), Integer.valueOf(((byte) (overrideWallpaperInfo.color >> 8)) & 255), Byte.valueOf((byte) (overrideWallpaperInfo.color & 255))).toLowerCase();
            int i2 = overrideWallpaperInfo.gradientColor1;
            String lowerCase2 = i2 != 0 ? String.format("%02x%02x%02x", Integer.valueOf(((byte) (i2 >> 16)) & 255), Integer.valueOf(((byte) (overrideWallpaperInfo.gradientColor1 >> 8)) & 255), Byte.valueOf((byte) (overrideWallpaperInfo.gradientColor1 & 255))).toLowerCase() : null;
            int i3 = overrideWallpaperInfo.gradientColor2;
            String lowerCase3 = i3 != 0 ? String.format("%02x%02x%02x", Integer.valueOf(((byte) (i3 >> 16)) & 255), Integer.valueOf(((byte) (overrideWallpaperInfo.gradientColor2 >> 8)) & 255), Byte.valueOf((byte) (overrideWallpaperInfo.gradientColor2 & 255))).toLowerCase() : null;
            int i4 = overrideWallpaperInfo.gradientColor3;
            String lowerCase4 = i4 != 0 ? String.format("%02x%02x%02x", Integer.valueOf(((byte) (i4 >> 16)) & 255), Integer.valueOf(((byte) (overrideWallpaperInfo.gradientColor3 >> 8)) & 255), Byte.valueOf((byte) (overrideWallpaperInfo.gradientColor3 & 255))).toLowerCase() : null;
            if (lowerCase2 == null || lowerCase3 == null) {
                if (lowerCase2 != null) {
                    lowerCase = (lowerCase + "-" + lowerCase2) + "&rotation=" + overrideWallpaperInfo.rotation;
                }
            } else if (lowerCase4 != null) {
                lowerCase = lowerCase + "~" + lowerCase2 + "~" + lowerCase3 + "~" + lowerCase4;
            } else {
                lowerCase = lowerCase + "~" + lowerCase2 + "~" + lowerCase3;
            }
            str = "https://attheme.org?slug=" + overrideWallpaperInfo.slug + "&intensity=" + ((int) (overrideWallpaperInfo.intensity * 100.0f)) + "&bg_color=" + lowerCase;
        }
        if (sb.length() > 0) {
            return str + "&mode=" + sb.toString();
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:143:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x0217 -> B:125:0x021a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveCurrentTheme(org.telegram.p048ui.ActionBar.Theme.ThemeInfo r12, boolean r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.saveCurrentTheme(org.telegram.ui.ActionBar.Theme$ThemeInfo, boolean, boolean, boolean):void");
    }

    public static void checkCurrentRemoteTheme(boolean z) {
        int i;
        if (loadingCurrentTheme == 0) {
            if (z || Math.abs((System.currentTimeMillis() / 1000) - lastLoadingCurrentThemeTime) >= 3600) {
                int i2 = 0;
                while (i2 < 2) {
                    final ThemeInfo themeInfo = i2 == 0 ? currentDayTheme : currentNightTheme;
                    if (themeInfo != null && UserConfig.getInstance(themeInfo.account).isClientActivated()) {
                        final ThemeAccent accent = themeInfo.getAccent(false);
                        final TLRPC$TL_theme tLRPC$TL_theme = themeInfo.info;
                        if (tLRPC$TL_theme != null) {
                            i = themeInfo.account;
                        } else if (accent != null && (tLRPC$TL_theme = accent.info) != null) {
                            i = UserConfig.selectedAccount;
                        }
                        if (tLRPC$TL_theme != null && tLRPC$TL_theme.document != null) {
                            loadingCurrentTheme++;
                            TLRPC$TL_account_getTheme tLRPC$TL_account_getTheme = new TLRPC$TL_account_getTheme();
                            tLRPC$TL_account_getTheme.document_id = tLRPC$TL_theme.document.f1508id;
                            tLRPC$TL_account_getTheme.format = "android";
                            TLRPC$TL_inputTheme tLRPC$TL_inputTheme = new TLRPC$TL_inputTheme();
                            tLRPC$TL_inputTheme.access_hash = tLRPC$TL_theme.access_hash;
                            tLRPC$TL_inputTheme.f1572id = tLRPC$TL_theme.f1631id;
                            tLRPC$TL_account_getTheme.theme = tLRPC$TL_inputTheme;
                            ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_account_getTheme, new RequestDelegate() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda15
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                                    Theme.lambda$checkCurrentRemoteTheme$7(Theme.ThemeAccent.this, themeInfo, tLRPC$TL_theme, tLObject, tLRPC$TL_error);
                                }
                            });
                        }
                    }
                    i2++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkCurrentRemoteTheme$7(final ThemeAccent themeAccent, final ThemeInfo themeInfo, final TLRPC$TL_theme tLRPC$TL_theme, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Theme.lambda$checkCurrentRemoteTheme$6(TLObject.this, themeAccent, themeInfo, tLRPC$TL_theme);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$checkCurrentRemoteTheme$6(org.telegram.tgnet.TLObject r7, org.telegram.p048ui.ActionBar.Theme.ThemeAccent r8, org.telegram.p048ui.ActionBar.Theme.ThemeInfo r9, org.telegram.tgnet.TLRPC$TL_theme r10) {
        /*
            int r0 = org.telegram.p048ui.ActionBar.Theme.loadingCurrentTheme
            r1 = 1
            int r0 = r0 - r1
            org.telegram.p048ui.ActionBar.Theme.loadingCurrentTheme = r0
            boolean r0 = r7 instanceof org.telegram.tgnet.TLRPC$TL_theme
            r2 = 0
            if (r0 == 0) goto La1
            org.telegram.tgnet.TLRPC$TL_theme r7 = (org.telegram.tgnet.TLRPC$TL_theme) r7
            java.util.ArrayList<org.telegram.tgnet.TLRPC$ThemeSettings> r0 = r7.settings
            int r0 = r0.size()
            r3 = 0
            if (r0 <= 0) goto L1f
            java.util.ArrayList<org.telegram.tgnet.TLRPC$ThemeSettings> r0 = r7.settings
            java.lang.Object r0 = r0.get(r2)
            org.telegram.tgnet.TLRPC$ThemeSettings r0 = (org.telegram.tgnet.TLRPC$ThemeSettings) r0
            goto L20
        L1f:
            r0 = r3
        L20:
            if (r8 == 0) goto L88
            if (r0 == 0) goto L88
            boolean r7 = org.telegram.p048ui.ActionBar.Theme.ThemeInfo.accentEquals(r8, r0)
            if (r7 != 0) goto L75
            java.io.File r7 = r8.getPathToWallpaper()
            if (r7 == 0) goto L33
            r7.delete()
        L33:
            org.telegram.p048ui.ActionBar.Theme.ThemeInfo.fillAccentValues(r8, r0)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r7 = org.telegram.p048ui.ActionBar.Theme.currentTheme
            if (r7 != r9) goto L70
            int r7 = r7.currentAccentId
            int r9 = r8.f1656id
            if (r7 != r9) goto L70
            refreshThemeColors()
            android.content.Context r7 = org.telegram.messenger.ApplicationLoader.applicationContext
            createChatResources(r7, r2)
            org.telegram.messenger.NotificationCenter r7 = org.telegram.messenger.NotificationCenter.getGlobalInstance()
            int r9 = org.telegram.messenger.NotificationCenter.needSetDayNightTheme
            r10 = 4
            java.lang.Object[] r10 = new java.lang.Object[r10]
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p048ui.ActionBar.Theme.currentTheme
            r10[r2] = r4
            org.telegram.ui.ActionBar.Theme$ThemeInfo r5 = org.telegram.p048ui.ActionBar.Theme.currentNightTheme
            if (r5 != r4) goto L5b
            r4 = r1
            goto L5c
        L5b:
            r4 = r2
        L5c:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            r10[r1] = r4
            r4 = 2
            r10[r4] = r3
            r3 = 3
            r4 = -1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r10[r3] = r4
            r7.postNotificationName(r9, r10)
        L70:
            org.telegram.p048ui.ActionBar.Theme.PatternsLoader.createLoader(r1)
            r7 = r1
            goto L76
        L75:
            r7 = r2
        L76:
            org.telegram.tgnet.TLRPC$WallPaper r9 = r0.wallpaper
            if (r9 == 0) goto L83
            org.telegram.tgnet.TLRPC$WallPaperSettings r9 = r9.settings
            if (r9 == 0) goto L83
            boolean r9 = r9.motion
            if (r9 == 0) goto L83
            goto L84
        L83:
            r1 = r2
        L84:
            r8.patternMotion = r1
            r1 = r7
            goto La2
        L88:
            org.telegram.tgnet.TLRPC$Document r0 = r7.document
            if (r0 == 0) goto La1
            long r3 = r0.f1508id
            org.telegram.tgnet.TLRPC$Document r10 = r10.document
            long r5 = r10.f1508id
            int r10 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r10 == 0) goto La1
            if (r8 == 0) goto L9b
            r8.info = r7
            goto La2
        L9b:
            r9.info = r7
            org.telegram.p048ui.ActionBar.Theme.ThemeInfo.access$3600(r9)
            goto La2
        La1:
            r1 = r2
        La2:
            int r7 = org.telegram.p048ui.ActionBar.Theme.loadingCurrentTheme
            if (r7 != 0) goto Lb3
            long r7 = java.lang.System.currentTimeMillis()
            r9 = 1000(0x3e8, double:4.94E-321)
            long r7 = r7 / r9
            int r7 = (int) r7
            org.telegram.p048ui.ActionBar.Theme.lastLoadingCurrentThemeTime = r7
            saveOtherThemes(r1)
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.lambda$checkCurrentRemoteTheme$6(org.telegram.tgnet.TLObject, org.telegram.ui.ActionBar.Theme$ThemeAccent, org.telegram.ui.ActionBar.Theme$ThemeInfo, org.telegram.tgnet.TLRPC$TL_theme):void");
    }

    public static void loadRemoteThemes(final int i, boolean z) {
        if (loadingRemoteThemes[i]) {
            return;
        }
        if ((z || Math.abs((System.currentTimeMillis() / 1000) - lastLoadingThemesTime[i]) >= 3600) && UserConfig.getInstance(i).isClientActivated()) {
            loadingRemoteThemes[i] = true;
            TLRPC$TL_account_getThemes tLRPC$TL_account_getThemes = new TLRPC$TL_account_getThemes();
            tLRPC$TL_account_getThemes.format = "android";
            if (!MediaDataController.getInstance(i).defaultEmojiThemes.isEmpty()) {
                tLRPC$TL_account_getThemes.hash = remoteThemesHash[i];
            }
            if (BuildVars.LOGS_ENABLED) {
                Log.i("theme", "loading remote themes, hash " + tLRPC$TL_account_getThemes.hash);
            }
            ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_account_getThemes, new RequestDelegate() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda14
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    Theme.lambda$loadRemoteThemes$9(i, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadRemoteThemes$9(final int i, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Theme.lambda$loadRemoteThemes$8(i, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:103:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0219  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$loadRemoteThemes$8(int r18, org.telegram.tgnet.TLObject r19) {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.lambda$loadRemoteThemes$8(int, org.telegram.tgnet.TLObject):void");
    }

    public static String getBaseThemeKey(TLRPC$ThemeSettings tLRPC$ThemeSettings) {
        TLRPC$BaseTheme tLRPC$BaseTheme = tLRPC$ThemeSettings.base_theme;
        if (tLRPC$BaseTheme instanceof TLRPC$TL_baseThemeClassic) {
            return "Blue";
        }
        if (tLRPC$BaseTheme instanceof TLRPC$TL_baseThemeDay) {
            return "Day";
        }
        if (tLRPC$BaseTheme instanceof TLRPC$TL_baseThemeTinted) {
            return "Dark Blue";
        }
        if (tLRPC$BaseTheme instanceof TLRPC$TL_baseThemeArctic) {
            return "Arctic Blue";
        }
        if (tLRPC$BaseTheme instanceof TLRPC$TL_baseThemeNight) {
            return "Night";
        }
        return null;
    }

    public static TLRPC$BaseTheme getBaseThemeByKey(String str) {
        if ("Blue".equals(str)) {
            return new TLRPC$TL_baseThemeClassic();
        }
        if ("Day".equals(str)) {
            return new TLRPC$TL_baseThemeDay();
        }
        if ("Dark Blue".equals(str)) {
            return new TLRPC$TL_baseThemeTinted();
        }
        if ("Arctic Blue".equals(str)) {
            return new TLRPC$TL_baseThemeArctic();
        }
        if ("Night".equals(str)) {
            return new TLRPC$TL_baseThemeNight();
        }
        return null;
    }

    public static void setThemeFileReference(TLRPC$TL_theme tLRPC$TL_theme) {
        TLRPC$Document tLRPC$Document;
        int size = themes.size();
        for (int i = 0; i < size; i++) {
            TLRPC$TL_theme tLRPC$TL_theme2 = themes.get(i).info;
            if (tLRPC$TL_theme2 != null && tLRPC$TL_theme2.f1631id == tLRPC$TL_theme.f1631id) {
                TLRPC$Document tLRPC$Document2 = tLRPC$TL_theme2.document;
                if (tLRPC$Document2 == null || (tLRPC$Document = tLRPC$TL_theme.document) == null) {
                    return;
                }
                tLRPC$Document2.file_reference = tLRPC$Document.file_reference;
                saveOtherThemes(true);
                return;
            }
        }
    }

    public static boolean isThemeInstalled(ThemeInfo themeInfo) {
        return (themeInfo == null || themesDict.get(themeInfo.getKey()) == null) ? false : true;
    }

    public static void setThemeUploadInfo(ThemeInfo themeInfo, ThemeAccent themeAccent, TLRPC$TL_theme tLRPC$TL_theme, int i, boolean z) {
        String str;
        TLRPC$WallPaperSettings tLRPC$WallPaperSettings;
        if (tLRPC$TL_theme == null) {
            return;
        }
        TLRPC$ThemeSettings tLRPC$ThemeSettings = tLRPC$TL_theme.settings.size() > 0 ? tLRPC$TL_theme.settings.get(0) : null;
        if (tLRPC$ThemeSettings != null) {
            if (themeInfo == null) {
                String baseThemeKey = getBaseThemeKey(tLRPC$ThemeSettings);
                if (baseThemeKey == null || (themeInfo = themesDict.get(baseThemeKey)) == null) {
                    return;
                }
                themeAccent = themeInfo.accentsByThemeId.get(tLRPC$TL_theme.f1631id);
            }
            if (themeAccent == null) {
                return;
            }
            TLRPC$TL_theme tLRPC$TL_theme2 = themeAccent.info;
            if (tLRPC$TL_theme2 != null) {
                themeInfo.accentsByThemeId.remove(tLRPC$TL_theme2.f1631id);
            }
            themeAccent.info = tLRPC$TL_theme;
            themeAccent.account = i;
            themeInfo.accentsByThemeId.put(tLRPC$TL_theme.f1631id, themeAccent);
            if (!ThemeInfo.accentEquals(themeAccent, tLRPC$ThemeSettings)) {
                File pathToWallpaper = themeAccent.getPathToWallpaper();
                if (pathToWallpaper != null) {
                    pathToWallpaper.delete();
                }
                ThemeInfo.fillAccentValues(themeAccent, tLRPC$ThemeSettings);
                ThemeInfo themeInfo2 = currentTheme;
                if (themeInfo2 == themeInfo && themeInfo2.currentAccentId == themeAccent.f1656id) {
                    refreshThemeColors();
                    NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
                    int i2 = NotificationCenter.needSetDayNightTheme;
                    Object[] objArr = new Object[4];
                    ThemeInfo themeInfo3 = currentTheme;
                    objArr[0] = themeInfo3;
                    objArr[1] = Boolean.valueOf(currentNightTheme == themeInfo3);
                    objArr[2] = null;
                    objArr[3] = -1;
                    globalInstance.postNotificationName(i2, objArr);
                }
                PatternsLoader.createLoader(true);
            }
            TLRPC$WallPaper tLRPC$WallPaper = tLRPC$ThemeSettings.wallpaper;
            themeAccent.patternMotion = (tLRPC$WallPaper == null || (tLRPC$WallPaperSettings = tLRPC$WallPaper.settings) == null || !tLRPC$WallPaperSettings.motion) ? false : true;
            themeInfo.previewParsed = false;
        } else {
            if (themeInfo != null) {
                HashMap<String, ThemeInfo> hashMap = themesDict;
                str = themeInfo.getKey();
                hashMap.remove(str);
            } else {
                str = "remote" + tLRPC$TL_theme.f1631id;
                themeInfo = themesDict.get(str);
            }
            if (themeInfo == null) {
                return;
            }
            themeInfo.info = tLRPC$TL_theme;
            themeInfo.name = tLRPC$TL_theme.title;
            File file = new File(themeInfo.pathToFile);
            File file2 = new File(ApplicationLoader.getFilesDirFixed(), str + ".attheme");
            if (!file.equals(file2)) {
                try {
                    AndroidUtilities.copyFile(file, file2);
                    themeInfo.pathToFile = file2.getAbsolutePath();
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            if (z) {
                themeInfo.loadThemeDocument();
            } else {
                themeInfo.previewParsed = false;
            }
            themesDict.put(themeInfo.getKey(), themeInfo);
        }
        saveOtherThemes(true);
    }

    public static File getAssetFile(String str) {
        long j;
        File file = new File(ApplicationLoader.getFilesDirFixed(), str);
        try {
            InputStream open = ApplicationLoader.applicationContext.getAssets().open(str);
            j = open.available();
            open.close();
        } catch (Exception e) {
            FileLog.m45e(e);
            j = 0;
        }
        if (!file.exists() || (j != 0 && file.length() != j)) {
            try {
                InputStream open2 = ApplicationLoader.applicationContext.getAssets().open(str);
                AndroidUtilities.copyFile(open2, file);
                if (open2 != null) {
                    open2.close();
                }
            } catch (Exception e2) {
                FileLog.m45e(e2);
            }
        }
        return file;
    }

    public static int getPreviewColor(HashMap<String, Integer> hashMap, String str) {
        Integer num = hashMap.get(str);
        if (num == null) {
            num = defaultColors.get(str);
        }
        return num.intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0261 A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02a2 A[Catch: all -> 0x0352, TRY_ENTER, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x04f1 A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x053a A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0555 A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0600 A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0621 A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b2 A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x04d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ba A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:290:0x04bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1 A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d9 A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f7 A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ff A[Catch: all -> 0x0686, TryCatch #3 {all -> 0x0686, blocks: (B:3:0x0008, B:5:0x0015, B:6:0x001a, B:8:0x0089, B:11:0x0091, B:16:0x00a0, B:25:0x00b2, B:28:0x00ba, B:32:0x00c3, B:39:0x00d1, B:42:0x00d9, B:46:0x00e2, B:53:0x00f7, B:56:0x00ff, B:60:0x010a, B:67:0x011b, B:69:0x0123, B:71:0x0131, B:74:0x013b, B:76:0x014c, B:79:0x0156, B:81:0x0160, B:85:0x0174, B:87:0x017c, B:89:0x0188, B:91:0x0198, B:96:0x01a3, B:100:0x01ad, B:102:0x01b7, B:104:0x01c6, B:127:0x0207, B:129:0x0261, B:133:0x0270, B:137:0x027f, B:138:0x028c, B:243:0x04f1, B:245:0x0510, B:247:0x053a, B:249:0x0555, B:250:0x0577, B:252:0x0600, B:255:0x0621, B:256:0x0647, B:164:0x035d, B:175:0x03a9, B:167:0x0367, B:168:0x0373, B:170:0x037d, B:174:0x038b, B:173:0x0387, B:177:0x03bf, B:214:0x04bd, B:218:0x04c3, B:226:0x04d4, B:230:0x04da, B:179:0x03c5, B:124:0x01f4, B:257:0x066f, B:141:0x02a2, B:143:0x02b1, B:145:0x02b5, B:147:0x02c6, B:149:0x02d1, B:153:0x02de, B:154:0x0302, B:224:0x04cf), top: B:266:0x0008, inners: #5, #16, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0108 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String createThemePreviewImage(java.lang.String r34, java.lang.String r35, org.telegram.p048ui.ActionBar.Theme.ThemeAccent r36) {
        /*
            Method dump skipped, instructions count: 1676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.createThemePreviewImage(java.lang.String, java.lang.String, org.telegram.ui.ActionBar.Theme$ThemeAccent):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkIsDark(HashMap<String, Integer> hashMap, ThemeInfo themeInfo) {
        if (themeInfo == null || hashMap == null || themeInfo.isDark != -1) {
            return;
        }
        if (ColorUtils.calculateLuminance(ColorUtils.blendARGB(getPreviewColor(hashMap, "windowBackgroundWhite"), getPreviewColor(hashMap, "windowBackgroundWhite"), 0.5f)) < 0.5d) {
            themeInfo.isDark = 1;
        } else {
            themeInfo.isDark = 0;
        }
    }

    public static void getThemeFileValuesInBackground(final File file, final String str, final String[] strArr, final Utilities.Callback<HashMap<String, Integer>> callback) {
        Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                Theme.lambda$getThemeFileValuesInBackground$10(Utilities.Callback.this, file, str, strArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getThemeFileValuesInBackground$10(Utilities.Callback callback, File file, String str, String[] strArr) {
        callback.run(getThemeFileValues(file, str, strArr));
    }

    public static HashMap<String, Integer> getThemeFileValues(File file, String str, String[] strArr) {
        int intValue;
        HashMap<String, Integer> hashMap = new HashMap<>(500);
        FileInputStream fileInputStream = null;
        try {
            try {
                byte[] bArr = new byte[1024];
                FileInputStream fileInputStream2 = new FileInputStream(str != null ? getAssetFile(str) : file);
                int i = -1;
                int i2 = 0;
                int i3 = -1;
                int i4 = 0;
                boolean z = false;
                while (true) {
                    try {
                        int read = fileInputStream2.read(bArr);
                        if (read == i) {
                            break;
                        }
                        int i5 = i2;
                        int i6 = i5;
                        int i7 = i4;
                        while (true) {
                            if (i5 >= read) {
                                break;
                            }
                            if (bArr[i5] == 10) {
                                int i8 = (i5 - i6) + 1;
                                String str2 = new String(bArr, i6, i8 - 1);
                                if (str2.startsWith("WLS=")) {
                                    if (strArr != null && strArr.length > 0) {
                                        strArr[i2] = str2.substring(4);
                                    }
                                } else if (str2.startsWith("WPS")) {
                                    i3 = i8 + i7;
                                    z = true;
                                    break;
                                } else {
                                    int indexOf = str2.indexOf(61);
                                    if (indexOf != i) {
                                        String substring = str2.substring(i2, indexOf);
                                        String substring2 = str2.substring(indexOf + 1);
                                        if (substring2.length() > 0 && substring2.charAt(i2) == '#') {
                                            try {
                                                intValue = Color.parseColor(substring2);
                                            } catch (Exception unused) {
                                                intValue = Utilities.parseInt((CharSequence) substring2).intValue();
                                            }
                                        } else {
                                            intValue = Utilities.parseInt((CharSequence) substring2).intValue();
                                        }
                                        hashMap.put(substring, Integer.valueOf(intValue));
                                    }
                                }
                                i6 += i8;
                                i7 += i8;
                            }
                            i5++;
                            i = -1;
                            i2 = 0;
                        }
                        if (i4 == i7) {
                            break;
                        }
                        fileInputStream2.getChannel().position(i7);
                        if (z) {
                            break;
                        }
                        i4 = i7;
                        i = -1;
                        i2 = 0;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        try {
                            FileLog.m45e(th);
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return hashMap;
                        } catch (Throwable th2) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e) {
                                    FileLog.m45e(e);
                                }
                            }
                            throw th2;
                        }
                    }
                }
                hashMap.put("wallpaperFileOffset", Integer.valueOf(i3));
                fileInputStream2.close();
            } catch (Exception e2) {
                FileLog.m45e(e2);
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return hashMap;
    }

    public static void createCommonResources(Context context) {
        if (dividerPaint == null) {
            Paint paint = new Paint();
            dividerPaint = paint;
            paint.setStrokeWidth(1.0f);
            Paint paint2 = new Paint();
            dividerExtraPaint = paint2;
            paint2.setStrokeWidth(1.0f);
            avatar_backgroundPaint = new Paint(1);
            Paint paint3 = new Paint(1);
            checkboxSquare_checkPaint = paint3;
            paint3.setStyle(Paint.Style.STROKE);
            checkboxSquare_checkPaint.setStrokeWidth(AndroidUtilities.m50dp(2));
            checkboxSquare_checkPaint.setStrokeCap(Paint.Cap.ROUND);
            Paint paint4 = new Paint(1);
            checkboxSquare_eraserPaint = paint4;
            paint4.setColor(0);
            checkboxSquare_eraserPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            checkboxSquare_backgroundPaint = new Paint(1);
            Paint paint5 = new Paint();
            linkSelectionPaint = paint5;
            paint5.setPathEffect(LinkPath.getRoundedEffect());
            Resources resources = context.getResources();
            avatarDrawables[0] = resources.getDrawable(C3301R.C3303drawable.chats_saved);
            avatarDrawables[0] = AppCompatResources.getDrawable(context, C3301R.C3303drawable.fork_ic_cloud);
            avatarDrawables[1] = resources.getDrawable(C3301R.C3303drawable.ghost);
            Drawable[] drawableArr = avatarDrawables;
            int i = C3301R.C3303drawable.msg_folders_private;
            drawableArr[2] = resources.getDrawable(i);
            avatarDrawables[3] = resources.getDrawable(C3301R.C3303drawable.msg_folders_requests);
            avatarDrawables[4] = resources.getDrawable(C3301R.C3303drawable.msg_folders_groups);
            avatarDrawables[5] = resources.getDrawable(C3301R.C3303drawable.msg_folders_channels);
            avatarDrawables[6] = resources.getDrawable(C3301R.C3303drawable.msg_folders_bots);
            avatarDrawables[7] = resources.getDrawable(C3301R.C3303drawable.msg_folders_muted);
            avatarDrawables[8] = resources.getDrawable(C3301R.C3303drawable.msg_folders_read);
            avatarDrawables[9] = resources.getDrawable(C3301R.C3303drawable.msg_folders_archive);
            avatarDrawables[10] = resources.getDrawable(i);
            avatarDrawables[11] = resources.getDrawable(C3301R.C3303drawable.chats_replies);
            avatarDrawables[12] = resources.getDrawable(C3301R.C3303drawable.other_chats);
            RLottieDrawable rLottieDrawable = dialogs_archiveAvatarDrawable;
            if (rLottieDrawable != null) {
                rLottieDrawable.setCallback(null);
                dialogs_archiveAvatarDrawable.recycle(false);
            }
            RLottieDrawable rLottieDrawable2 = dialogs_archiveDrawable;
            if (rLottieDrawable2 != null) {
                rLottieDrawable2.recycle(false);
            }
            RLottieDrawable rLottieDrawable3 = dialogs_unarchiveDrawable;
            if (rLottieDrawable3 != null) {
                rLottieDrawable3.recycle(false);
            }
            RLottieDrawable rLottieDrawable4 = dialogs_pinArchiveDrawable;
            if (rLottieDrawable4 != null) {
                rLottieDrawable4.recycle(false);
            }
            RLottieDrawable rLottieDrawable5 = dialogs_unpinArchiveDrawable;
            if (rLottieDrawable5 != null) {
                rLottieDrawable5.recycle(false);
            }
            RLottieDrawable rLottieDrawable6 = dialogs_hidePsaDrawable;
            if (rLottieDrawable6 != null) {
                rLottieDrawable6.recycle(false);
            }
            dialogs_archiveAvatarDrawable = new RLottieDrawable(C3301R.C3306raw.chats_archiveavatar, "chats_archiveavatar", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_archiveDrawable = new RLottieDrawable(C3301R.C3306raw.chats_archive, "chats_archive", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_unarchiveDrawable = new RLottieDrawable(C3301R.C3306raw.chats_unarchive, "chats_unarchive", AndroidUtilities.m50dp(AndroidUtilities.m50dp(36)), AndroidUtilities.m50dp(36), false, null);
            dialogs_pinArchiveDrawable = new RLottieDrawable(C3301R.C3306raw.chats_hide, "chats_hide", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_unpinArchiveDrawable = new RLottieDrawable(C3301R.C3306raw.chats_unhide, "chats_unhide", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_hidePsaDrawable = new RLottieDrawable(C3301R.C3306raw.chat_audio_record_delete, "chats_psahide", AndroidUtilities.m50dp(30), AndroidUtilities.m50dp(30), false, null);
            dialogs_swipeMuteDrawable = new RLottieDrawable(C3301R.C3306raw.swipe_mute, "swipe_mute", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_swipeUnmuteDrawable = new RLottieDrawable(C3301R.C3306raw.swipe_unmute, "swipe_unmute", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_swipeReadDrawable = new RLottieDrawable(C3301R.C3306raw.swipe_read, "swipe_read", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_swipeUnreadDrawable = new RLottieDrawable(C3301R.C3306raw.swipe_unread, "swipe_unread", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_swipeDeleteDrawable = new RLottieDrawable(C3301R.C3306raw.swipe_delete, "swipe_delete", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_swipeUnpinDrawable = new RLottieDrawable(C3301R.C3306raw.swipe_unpin, "swipe_unpin", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            dialogs_swipePinDrawable = new RLottieDrawable(C3301R.C3306raw.swipe_pin, "swipe_pin", AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(36), false, null);
            applyCommonTheme();
        }
    }

    public static void applyCommonTheme() {
        Paint paint = dividerPaint;
        if (paint == null) {
            return;
        }
        paint.setColor(getColor("divider"));
        linkSelectionPaint.setColor(getColor("windowBackgroundWhiteLinkSelection"));
        int i = 0;
        while (true) {
            Drawable[] drawableArr = avatarDrawables;
            if (i >= drawableArr.length) {
                dialogs_archiveAvatarDrawable.beginApplyLayerColors();
                dialogs_archiveAvatarDrawable.setLayerColor("Arrow1.**", getNonAnimatedColor("avatar_backgroundArchived"));
                dialogs_archiveAvatarDrawable.setLayerColor("Arrow2.**", getNonAnimatedColor("avatar_backgroundArchived"));
                dialogs_archiveAvatarDrawable.setLayerColor("Box2.**", getNonAnimatedColor("avatar_text"));
                dialogs_archiveAvatarDrawable.setLayerColor("Box1.**", getNonAnimatedColor("avatar_text"));
                dialogs_archiveAvatarDrawable.commitApplyLayerColors();
                dialogs_archiveAvatarDrawableRecolored = false;
                dialogs_archiveAvatarDrawable.setAllowDecodeSingleFrame(true);
                dialogs_pinArchiveDrawable.beginApplyLayerColors();
                dialogs_pinArchiveDrawable.setLayerColor("Arrow.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_pinArchiveDrawable.setLayerColor("Line.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_pinArchiveDrawable.commitApplyLayerColors();
                dialogs_unpinArchiveDrawable.beginApplyLayerColors();
                dialogs_unpinArchiveDrawable.setLayerColor("Arrow.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_unpinArchiveDrawable.setLayerColor("Line.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_unpinArchiveDrawable.commitApplyLayerColors();
                dialogs_hidePsaDrawable.beginApplyLayerColors();
                dialogs_hidePsaDrawable.setLayerColor("Line 1.**", getNonAnimatedColor("chats_archiveBackground"));
                dialogs_hidePsaDrawable.setLayerColor("Line 2.**", getNonAnimatedColor("chats_archiveBackground"));
                dialogs_hidePsaDrawable.setLayerColor("Line 3.**", getNonAnimatedColor("chats_archiveBackground"));
                dialogs_hidePsaDrawable.setLayerColor("Cup Red.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_hidePsaDrawable.setLayerColor("Box.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_hidePsaDrawable.commitApplyLayerColors();
                dialogs_hidePsaDrawableRecolored = false;
                dialogs_archiveDrawable.beginApplyLayerColors();
                dialogs_archiveDrawable.setLayerColor("Arrow.**", getNonAnimatedColor("chats_archiveBackground"));
                dialogs_archiveDrawable.setLayerColor("Box2.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_archiveDrawable.setLayerColor("Box1.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_archiveDrawable.commitApplyLayerColors();
                dialogs_archiveDrawableRecolored = false;
                dialogs_unarchiveDrawable.beginApplyLayerColors();
                dialogs_unarchiveDrawable.setLayerColor("Arrow1.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_unarchiveDrawable.setLayerColor("Arrow2.**", getNonAnimatedColor("chats_archivePinBackground"));
                dialogs_unarchiveDrawable.setLayerColor("Box2.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_unarchiveDrawable.setLayerColor("Box1.**", getNonAnimatedColor("chats_archiveIcon"));
                dialogs_unarchiveDrawable.commitApplyLayerColors();
                chat_animatedEmojiTextColorFilter = new PorterDuffColorFilter(getColor("windowBackgroundWhiteBlackText"), PorterDuff.Mode.SRC_IN);
                PremiumGradient.getInstance().checkIconColors();
                return;
            }
            if (i != 0) {
                setDrawableColorByKey(drawableArr[i], "avatar_text");
            }
            i++;
        }
    }

    public static void createCommonDialogResources(Context context) {
        if (dialogs_countTextPaint == null) {
            TextPaint textPaint = new TextPaint(1);
            dialogs_countTextPaint = textPaint;
            textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            dialogs_countPaint = new Paint(1);
            dialogs_reactionsCountPaint = new Paint(1);
            dialogs_onlineCirclePaint = new Paint(1);
        }
        dialogs_countTextPaint.setTextSize(AndroidUtilities.m50dp(13));
    }

    public static void createDialogsResources(Context context) {
        createCommonResources(context);
        createCommonDialogResources(context);
        if (dialogs_namePaint == null) {
            Resources resources = context.getResources();
            dialogs_namePaint = new TextPaint[2];
            dialogs_nameEncryptedPaint = new TextPaint[2];
            dialogs_messagePaint = new TextPaint[2];
            dialogs_messagePrintingPaint = new TextPaint[2];
            for (int i = 0; i < 2; i++) {
                dialogs_namePaint[i] = new TextPaint(1);
                dialogs_namePaint[i].setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                dialogs_nameEncryptedPaint[i] = new TextPaint(1);
                dialogs_nameEncryptedPaint[i].setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                dialogs_messagePaint[i] = new TextPaint(1);
                dialogs_messagePrintingPaint[i] = new TextPaint(1);
            }
            TextPaint textPaint = new TextPaint(1);
            dialogs_searchNamePaint = textPaint;
            textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextPaint textPaint2 = new TextPaint(1);
            dialogs_searchNameEncryptedPaint = textPaint2;
            textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextPaint textPaint3 = new TextPaint(1);
            dialogs_messageNamePaint = textPaint3;
            textPaint3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            dialogs_timePaint = new TextPaint(1);
            TextPaint textPaint4 = new TextPaint(1);
            dialogs_archiveTextPaint = textPaint4;
            textPaint4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextPaint textPaint5 = new TextPaint(1);
            dialogs_archiveTextPaintSmall = textPaint5;
            textPaint5.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            dialogs_onlinePaint = new TextPaint(1);
            dialogs_offlinePaint = new TextPaint(1);
            dialogs_tabletSeletedPaint = new Paint();
            dialogs_pinnedPaint = new Paint(1);
            dialogs_countGrayPaint = new Paint(1);
            dialogs_errorPaint = new Paint(1);
            dialogs_actionMessagePaint = new Paint(1);
            dialogs_lockDrawable = resources.getDrawable(C3301R.C3303drawable.list_secret);
            dialogs_lock2Drawable = resources.getDrawable(C3301R.C3303drawable.msg_mini_lock2);
            int i2 = C3301R.C3303drawable.list_check;
            dialogs_checkDrawable = resources.getDrawable(i2).mutate();
            dialogs_playDrawable = resources.getDrawable(C3301R.C3303drawable.minithumb_play).mutate();
            dialogs_checkReadDrawable = resources.getDrawable(i2).mutate();
            dialogs_halfCheckDrawable = resources.getDrawable(C3301R.C3303drawable.list_halfcheck);
            dialogs_clockDrawable = new MsgClockDrawable();
            dialogs_errorDrawable = resources.getDrawable(C3301R.C3303drawable.list_warning_sign);
            dialogs_reorderDrawable = resources.getDrawable(C3301R.C3303drawable.list_reorder).mutate();
            dialogs_muteDrawable = resources.getDrawable(C3301R.C3303drawable.list_mute).mutate();
            dialogs_unmuteDrawable = resources.getDrawable(C3301R.C3303drawable.list_unmute).mutate();
            dialogs_verifiedDrawable = resources.getDrawable(C3301R.C3303drawable.verified_area).mutate();
            dialogs_scamDrawable = new ScamDrawable(11, 0);
            dialogs_fakeDrawable = new ScamDrawable(11, 1);
            dialogs_verifiedCheckDrawable = resources.getDrawable(C3301R.C3303drawable.verified_check).mutate();
            dialogs_mentionDrawable = resources.getDrawable(C3301R.C3303drawable.mentionchatslist);
            dialogs_reactionsMentionDrawable = resources.getDrawable(C3301R.C3303drawable.reactionchatslist);
            dialogs_pinnedDrawable = resources.getDrawable(C3301R.C3303drawable.list_pin);
            dialogs_forum_arrowDrawable = resources.getDrawable(C3301R.C3303drawable.msg_mini_forumarrow);
            moveUpDrawable = resources.getDrawable(C3301R.C3303drawable.preview_arrow);
            RectF rectF = new RectF();
            chat_updatePath[0] = new Path();
            chat_updatePath[2] = new Path();
            float m50dp = AndroidUtilities.m50dp(12);
            float m50dp2 = AndroidUtilities.m50dp(12);
            rectF.set(m50dp - AndroidUtilities.m50dp(5), m50dp2 - AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(5) + m50dp, AndroidUtilities.m50dp(5) + m50dp2);
            chat_updatePath[2].arcTo(rectF, -160.0f, -110.0f, true);
            chat_updatePath[2].arcTo(rectF, 20.0f, -110.0f, true);
            chat_updatePath[0].moveTo(m50dp, AndroidUtilities.m50dp(8) + m50dp2);
            chat_updatePath[0].lineTo(m50dp, AndroidUtilities.m50dp(2) + m50dp2);
            chat_updatePath[0].lineTo(AndroidUtilities.m50dp(3) + m50dp, AndroidUtilities.m50dp(5) + m50dp2);
            chat_updatePath[0].close();
            chat_updatePath[0].moveTo(m50dp, m50dp2 - AndroidUtilities.m50dp(8));
            chat_updatePath[0].lineTo(m50dp, m50dp2 - AndroidUtilities.m50dp(2));
            chat_updatePath[0].lineTo(m50dp - AndroidUtilities.m50dp(3), m50dp2 - AndroidUtilities.m50dp(5));
            chat_updatePath[0].close();
            applyDialogsTheme();
        }
        dialogs_messageNamePaint.setTextSize(AndroidUtilities.m50dp(14));
        dialogs_timePaint.setTextSize(AndroidUtilities.m50dp(13));
        dialogs_archiveTextPaint.setTextSize(AndroidUtilities.m50dp(13));
        dialogs_archiveTextPaintSmall.setTextSize(AndroidUtilities.m50dp(11));
        dialogs_onlinePaint.setTextSize(AndroidUtilities.m50dp(15));
        dialogs_offlinePaint.setTextSize(AndroidUtilities.m50dp(15));
        dialogs_searchNamePaint.setTextSize(AndroidUtilities.m50dp(16));
        dialogs_searchNameEncryptedPaint.setTextSize(AndroidUtilities.m50dp(16));
    }

    public static void applyDialogsTheme() {
        if (dialogs_namePaint == null) {
            return;
        }
        for (int i = 0; i < 2; i++) {
            dialogs_namePaint[i].setColor(getColor("chats_name"));
            dialogs_nameEncryptedPaint[i].setColor(getColor("chats_secretName"));
            TextPaint[] textPaintArr = dialogs_messagePaint;
            TextPaint textPaint = textPaintArr[i];
            TextPaint textPaint2 = textPaintArr[i];
            int color = getColor("chats_message");
            textPaint2.linkColor = color;
            textPaint.setColor(color);
            dialogs_messagePrintingPaint[i].setColor(getColor("chats_actionMessage"));
        }
        dialogs_searchNamePaint.setColor(getColor("chats_name"));
        dialogs_searchNameEncryptedPaint.setColor(getColor("chats_secretName"));
        TextPaint textPaint3 = dialogs_messageNamePaint;
        int color2 = getColor("chats_nameMessage_threeLines");
        textPaint3.linkColor = color2;
        textPaint3.setColor(color2);
        dialogs_tabletSeletedPaint.setColor(getColor("chats_tabletSelectedOverlay"));
        dialogs_pinnedPaint.setColor(getColor("chats_pinnedOverlay"));
        dialogs_timePaint.setColor(getColor("chats_date"));
        dialogs_countTextPaint.setColor(getColor("chats_unreadCounterText"));
        dialogs_archiveTextPaint.setColor(getColor("chats_archiveText"));
        dialogs_archiveTextPaintSmall.setColor(getColor("chats_archiveText"));
        dialogs_countPaint.setColor(getColor("chats_unreadCounter"));
        dialogs_reactionsCountPaint.setColor(getColor("dialogReactionMentionBackground"));
        dialogs_countGrayPaint.setColor(getColor("chats_unreadCounterMuted"));
        dialogs_actionMessagePaint.setColor(getColor("chats_actionMessage"));
        dialogs_errorPaint.setColor(getColor("chats_sentError"));
        dialogs_onlinePaint.setColor(getColor("windowBackgroundWhiteBlueText3"));
        dialogs_offlinePaint.setColor(getColor("windowBackgroundWhiteGrayText3"));
        setDrawableColorByKey(dialogs_lockDrawable, "chats_secretIcon");
        setDrawableColorByKey(dialogs_lock2Drawable, "chats_pinnedIcon");
        setDrawableColorByKey(dialogs_checkDrawable, "chats_sentCheck");
        setDrawableColorByKey(dialogs_checkReadDrawable, "chats_sentReadCheck");
        setDrawableColorByKey(dialogs_halfCheckDrawable, "chats_sentReadCheck");
        setDrawableColorByKey(dialogs_clockDrawable, "chats_sentClock");
        setDrawableColorByKey(dialogs_errorDrawable, "chats_sentErrorIcon");
        setDrawableColorByKey(dialogs_pinnedDrawable, "chats_pinnedIcon");
        setDrawableColorByKey(dialogs_reorderDrawable, "chats_pinnedIcon");
        setDrawableColorByKey(dialogs_muteDrawable, "chats_muteIcon");
        setDrawableColorByKey(dialogs_unmuteDrawable, "chats_muteIcon");
        setDrawableColorByKey(dialogs_mentionDrawable, "chats_mentionIcon");
        setDrawableColorByKey(dialogs_forum_arrowDrawable, "chats_message");
        setDrawableColorByKey(dialogs_reactionsMentionDrawable, "chats_mentionIcon");
        setDrawableColorByKey(dialogs_verifiedDrawable, "chats_verifiedBackground");
        setDrawableColorByKey(dialogs_verifiedCheckDrawable, "chats_verifiedCheck");
        setDrawableColorByKey(dialogs_holidayDrawable, "actionBarDefaultTitle");
        setDrawableColorByKey(dialogs_scamDrawable, "chats_draft");
        setDrawableColorByKey(dialogs_fakeDrawable, "chats_draft");
    }

    public static void reloadAllResources(Context context) {
        destroyResources();
        if (chat_msgInDrawable != null) {
            chat_msgInDrawable = null;
            createChatResources(context, false);
        }
        if (dialogs_namePaint != null) {
            dialogs_namePaint = null;
            createDialogsResources(context);
        }
        if (profile_verifiedDrawable != null) {
            profile_verifiedDrawable = null;
            createProfileResources(context);
        }
    }

    public static void createCommonMessageResources() {
        synchronized (sync) {
            if (chat_msgTextPaint == null) {
                chat_msgTextPaint = new TextPaint(1);
                chat_msgGameTextPaint = new TextPaint(1);
                chat_msgTextPaintEmoji = new TextPaint[6];
                chat_msgTextPaintOneEmoji = new TextPaint(1);
                chat_msgTextPaintTwoEmoji = new TextPaint(1);
                chat_msgTextPaintThreeEmoji = new TextPaint(1);
                TextPaint textPaint = new TextPaint(1);
                chat_msgBotButtonPaint = textPaint;
                textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                TextPaint textPaint2 = new TextPaint(1);
                chat_namePaint = textPaint2;
                textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                TextPaint textPaint3 = new TextPaint(1);
                chat_replyNamePaint = textPaint3;
                textPaint3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                chat_replyTextPaint = new TextPaint(1);
                TextPaint textPaint4 = new TextPaint(1);
                chat_topicTextPaint = textPaint4;
                textPaint4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                chat_forwardNamePaint = new TextPaint(1);
                chat_adminPaint = new TextPaint(1);
                chat_timePaint = new TextPaint(1);
            }
            int i = 0;
            float[] fArr = {0.68f, 0.46f, 0.34f, 0.28f, 0.22f, 0.19f};
            while (true) {
                TextPaint[] textPaintArr = chat_msgTextPaintEmoji;
                if (i < textPaintArr.length) {
                    textPaintArr[i] = new TextPaint(1);
                    chat_msgTextPaintEmoji[i].setTextSize(AndroidUtilities.m51dp(fArr[i] * 120.0f));
                    i++;
                } else {
                    chat_msgTextPaintOneEmoji.setTextSize(AndroidUtilities.m50dp(46));
                    chat_msgTextPaintTwoEmoji.setTextSize(AndroidUtilities.m50dp(38));
                    chat_msgTextPaintThreeEmoji.setTextSize(AndroidUtilities.m50dp(30));
                    chat_msgTextPaint.setTextSize(AndroidUtilities.m50dp(SharedConfig.fontSize));
                    chat_msgGameTextPaint.setTextSize(AndroidUtilities.m50dp(14));
                    chat_msgBotButtonPaint.setTextSize(AndroidUtilities.m50dp(15));
                    float f = ((SharedConfig.fontSize * 2) + 10) / 3.0f;
                    chat_namePaint.setTextSize(AndroidUtilities.m51dp(f));
                    chat_replyNamePaint.setTextSize(AndroidUtilities.m51dp(f));
                    chat_replyTextPaint.setTextSize(AndroidUtilities.m51dp(f));
                    float f2 = f - 1.0f;
                    chat_topicTextPaint.setTextSize(AndroidUtilities.m51dp(f2));
                    chat_forwardNamePaint.setTextSize(AndroidUtilities.m51dp(f));
                    chat_adminPaint.setTextSize(AndroidUtilities.m51dp(f2));
                }
            }
        }
    }

    public static void createCommonChatResources() {
        createCommonMessageResources();
        if (chat_infoPaint == null) {
            chat_infoPaint = new TextPaint(1);
            TextPaint textPaint = new TextPaint(1);
            chat_stickerCommentCountPaint = textPaint;
            textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextPaint textPaint2 = new TextPaint(1);
            chat_docNamePaint = textPaint2;
            textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            chat_docBackPaint = new Paint(1);
            chat_deleteProgressPaint = new Paint(1);
            TextPaint textPaint3 = new TextPaint(1);
            chat_locationTitlePaint = textPaint3;
            textPaint3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            chat_locationAddressPaint = new TextPaint(1);
            Paint paint = new Paint();
            chat_urlPaint = paint;
            paint.setPathEffect(LinkPath.getRoundedEffect());
            Paint paint2 = new Paint();
            chat_outUrlPaint = paint2;
            paint2.setPathEffect(LinkPath.getRoundedEffect());
            Paint paint3 = new Paint();
            chat_textSearchSelectionPaint = paint3;
            paint3.setPathEffect(LinkPath.getRoundedEffect());
            Paint paint4 = new Paint(1);
            chat_radialProgressPaint = paint4;
            paint4.setStrokeCap(Paint.Cap.ROUND);
            chat_radialProgressPaint.setStyle(Paint.Style.STROKE);
            chat_radialProgressPaint.setColor(-1610612737);
            Paint paint5 = new Paint(1);
            chat_radialProgress2Paint = paint5;
            paint5.setStrokeCap(Paint.Cap.ROUND);
            chat_radialProgress2Paint.setStyle(Paint.Style.STROKE);
            chat_audioTimePaint = new TextPaint(1);
            TextPaint textPaint4 = new TextPaint(1);
            chat_livePaint = textPaint4;
            textPaint4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextPaint textPaint5 = new TextPaint(1);
            chat_audioTitlePaint = textPaint5;
            textPaint5.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            chat_audioPerformerPaint = new TextPaint(1);
            TextPaint textPaint6 = new TextPaint(1);
            chat_botButtonPaint = textPaint6;
            textPaint6.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextPaint textPaint7 = new TextPaint(1);
            chat_contactNamePaint = textPaint7;
            textPaint7.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            chat_contactPhonePaint = new TextPaint(1);
            chat_durationPaint = new TextPaint(1);
            TextPaint textPaint8 = new TextPaint(1);
            chat_gamePaint = textPaint8;
            textPaint8.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            chat_shipmentPaint = new TextPaint(1);
            chat_timePaint = new TextPaint(1);
            chat_adminPaint = new TextPaint(1);
            TextPaint textPaint9 = new TextPaint(1);
            chat_namePaint = textPaint9;
            textPaint9.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            chat_forwardNamePaint = new TextPaint(1);
            TextPaint textPaint10 = new TextPaint(1);
            chat_replyNamePaint = textPaint10;
            textPaint10.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            chat_replyTextPaint = new TextPaint(1);
            TextPaint textPaint11 = new TextPaint(1);
            chat_topicTextPaint = textPaint11;
            textPaint11.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            chat_commentTextPaint = new TextPaint(1);
            TextPaint textPaint12 = new TextPaint(1);
            chat_instantViewPaint = textPaint12;
            textPaint12.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            Paint paint6 = new Paint(1);
            chat_instantViewRectPaint = paint6;
            paint6.setStyle(Paint.Style.STROKE);
            chat_instantViewRectPaint.setStrokeCap(Paint.Cap.ROUND);
            Paint paint7 = new Paint(1);
            chat_pollTimerPaint = paint7;
            paint7.setStyle(Paint.Style.STROKE);
            chat_pollTimerPaint.setStrokeCap(Paint.Cap.ROUND);
            chat_replyLinePaint = new Paint(1);
            chat_msgErrorPaint = new Paint(1);
            chat_statusPaint = new Paint(1);
            Paint paint8 = new Paint(1);
            chat_statusRecordPaint = paint8;
            paint8.setStyle(Paint.Style.STROKE);
            chat_statusRecordPaint.setStrokeCap(Paint.Cap.ROUND);
            chat_actionTextPaint = new TextPaint(1);
            chat_actionTextPaint2 = new TextPaint(1);
            chat_actionTextPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextPaint textPaint13 = new TextPaint(1);
            chat_unlockExtendedMediaTextPaint = textPaint13;
            textPaint13.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            Paint paint9 = new Paint(1);
            chat_actionBackgroundGradientDarkenPaint = paint9;
            paint9.setColor(704643072);
            chat_timeBackgroundPaint = new Paint(1);
            TextPaint textPaint14 = new TextPaint(1);
            chat_contextResult_titleTextPaint = textPaint14;
            textPaint14.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            chat_contextResult_descriptionTextPaint = new TextPaint(1);
            chat_composeBackgroundPaint = new Paint();
            new Paint(1);
            chat_radialProgressPausedSeekbarPaint = new Paint(1);
            chat_messageBackgroundSelectedPaint = new Paint(1);
            chat_actionBackgroundPaint = new Paint(1);
            chat_actionBackgroundSelectedPaint = new Paint(1);
            chat_actionBackgroundPaint2 = new Paint(1);
            new Paint(1);
            addChatPaint("paintChatMessageBackgroundSelected", chat_messageBackgroundSelectedPaint, "chat_selectedBackground");
            addChatPaint("paintChatActionBackground", chat_actionBackgroundPaint, "chat_serviceBackground");
            addChatPaint("paintChatActionBackgroundSelected", chat_actionBackgroundSelectedPaint, "chat_serviceBackgroundSelected");
            addChatPaint("paintChatActionText", chat_actionTextPaint, "chat_serviceText");
            addChatPaint("paintChatActionText2", chat_actionTextPaint2, "chat_serviceText");
            addChatPaint("paintChatBotButton", chat_botButtonPaint, "chat_botButtonText");
            addChatPaint("paintChatComposeBackground", chat_composeBackgroundPaint, "chat_messagePanelBackground");
            addChatPaint("paintChatTimeBackground", chat_timeBackgroundPaint, "chat_mediaTimeBackground");
        }
    }

    public static void createChatResources(Context context, boolean z) {
        TextPaint textPaint;
        float f;
        createCommonChatResources();
        if (!z && chat_msgInDrawable == null) {
            Resources resources = context.getResources();
            int i = C3301R.C3303drawable.arrow_more;
            chat_msgInSpoilerDrawable = resources.getDrawable(i).mutate();
            chat_msgOutSpoilerDrawable = resources.getDrawable(i).mutate();
            int i2 = C3301R.C3303drawable.fork_chat_bookmarks_mark;
            chat_msgInBookmarkDrawable = resources.getDrawable(i2).mutate();
            chat_msgInBookmarkSelectedDrawable = resources.getDrawable(i2).mutate();
            chat_msgOutBookmarkDrawable = resources.getDrawable(i2).mutate();
            chat_msgOutBookmarkSelectedDrawable = resources.getDrawable(i2).mutate();
            chat_msgMediaBookmarkDrawable = resources.getDrawable(i2).mutate();
            chat_msgStickerBookmarkDrawable = resources.getDrawable(i2).mutate();
            chat_msgNoSoundDrawable = resources.getDrawable(C3301R.C3303drawable.video_muted);
            chat_msgInDrawable = new MessageDrawable(0, false, false);
            chat_msgInSelectedDrawable = new MessageDrawable(0, false, true);
            chat_msgOutDrawable = new MessageDrawable(0, true, false);
            chat_msgOutSelectedDrawable = new MessageDrawable(0, true, true);
            chat_msgInMediaDrawable = new MessageDrawable(1, false, false);
            chat_msgInMediaSelectedDrawable = new MessageDrawable(1, false, true);
            chat_msgOutMediaDrawable = new MessageDrawable(1, true, false);
            chat_msgOutMediaSelectedDrawable = new MessageDrawable(1, true, true);
            PathAnimator pathAnimator = new PathAnimator(0.293f, -26.0f, -28.0f, 1.0f);
            playPauseAnimator = pathAnimator;
            pathAnimator.addSvgKeyFrame("M 34.141 16.042 C 37.384 17.921 40.886 20.001 44.211 21.965 C 46.139 23.104 49.285 24.729 49.586 25.917 C 50.289 28.687 48.484 30 46.274 30 L 6 30.021 C 3.79 30.021 2.075 30.023 2 26.021 L 2.009 3.417 C 2.009 0.417 5.326 -0.58 7.068 0.417 C 10.545 2.406 25.024 10.761 34.141 16.042 Z", 166.0f);
            playPauseAnimator.addSvgKeyFrame("M 37.843 17.769 C 41.143 19.508 44.131 21.164 47.429 23.117 C 48.542 23.775 49.623 24.561 49.761 25.993 C 50.074 28.708 48.557 30 46.347 30 L 6 30.012 C 3.79 30.012 2 28.222 2 26.012 L 2.009 4.609 C 2.009 1.626 5.276 0.664 7.074 1.541 C 10.608 3.309 28.488 12.842 37.843 17.769 Z", 200.0f);
            playPauseAnimator.addSvgKeyFrame("M 40.644 18.756 C 43.986 20.389 49.867 23.108 49.884 25.534 C 49.897 27.154 49.88 24.441 49.894 26.059 C 49.911 28.733 48.6 30 46.39 30 L 6 30.013 C 3.79 30.013 2 28.223 2 26.013 L 2.008 5.52 C 2.008 2.55 5.237 1.614 7.079 2.401 C 10.656 4 31.106 14.097 40.644 18.756 Z", 217.0f);
            playPauseAnimator.addSvgKeyFrame("M 43.782 19.218 C 47.117 20.675 50.075 21.538 50.041 24.796 C 50.022 26.606 50.038 24.309 50.039 26.104 C 50.038 28.736 48.663 30 46.453 30 L 6 29.986 C 3.79 29.986 2 28.196 2 25.986 L 2.008 6.491 C 2.008 3.535 5.196 2.627 7.085 3.316 C 10.708 4.731 33.992 14.944 43.782 19.218 Z", 234.0f);
            playPauseAnimator.addSvgKeyFrame("M 47.421 16.941 C 50.544 18.191 50.783 19.91 50.769 22.706 C 50.761 24.484 50.76 23.953 50.79 26.073 C 50.814 27.835 49.334 30 47.124 30 L 5 30.01 C 2.79 30.01 1 28.22 1 26.01 L 1.001 10.823 C 1.001 8.218 3.532 6.895 5.572 7.26 C 7.493 8.01 47.421 16.941 47.421 16.941 Z", 267.0f);
            playPauseAnimator.addSvgKeyFrame("M 47.641 17.125 C 50.641 18.207 51.09 19.935 51.078 22.653 C 51.07 24.191 51.062 21.23 51.088 23.063 C 51.109 24.886 49.587 27 47.377 27 L 5 27.009 C 2.79 27.009 1 25.219 1 23.009 L 0.983 11.459 C 0.983 8.908 3.414 7.522 5.476 7.838 C 7.138 8.486 47.641 17.125 47.641 17.125 Z", 300.0f);
            playPauseAnimator.addSvgKeyFrame("M 48 7 C 50.21 7 52 8.79 52 11 C 52 19 52 19 52 19 C 52 21.21 50.21 23 48 23 L 4 23 C 1.79 23 0 21.21 0 19 L 0 11 C 0 8.79 1.79 7 4 7 C 48 7 48 7 48 7 Z", 383.0f);
            int i3 = C3301R.C3303drawable.msg_check_s;
            chat_msgOutCheckDrawable = resources.getDrawable(i3).mutate();
            chat_msgOutCheckSelectedDrawable = resources.getDrawable(i3).mutate();
            chat_msgOutCheckReadDrawable = resources.getDrawable(i3).mutate();
            chat_msgOutCheckReadSelectedDrawable = resources.getDrawable(i3).mutate();
            chat_msgMediaCheckDrawable = resources.getDrawable(i3).mutate();
            chat_msgStickerCheckDrawable = resources.getDrawable(i3).mutate();
            int i4 = C3301R.C3303drawable.msg_halfcheck;
            chat_msgOutHalfCheckDrawable = resources.getDrawable(i4).mutate();
            chat_msgOutHalfCheckSelectedDrawable = resources.getDrawable(i4).mutate();
            int i5 = C3301R.C3303drawable.msg_halfcheck_s;
            chat_msgMediaHalfCheckDrawable = resources.getDrawable(i5).mutate();
            chat_msgStickerHalfCheckDrawable = resources.getDrawable(i5).mutate();
            chat_msgClockDrawable = new MsgClockDrawable();
            int i6 = C3301R.C3303drawable.ic_lock_header;
            chat_msgUnlockDrawable = resources.getDrawable(i6).mutate();
            int i7 = C3301R.C3303drawable.msg_views;
            chat_msgInViewsDrawable = resources.getDrawable(i7).mutate();
            chat_msgInViewsSelectedDrawable = resources.getDrawable(i7).mutate();
            chat_msgOutViewsDrawable = resources.getDrawable(i7).mutate();
            chat_msgOutViewsSelectedDrawable = resources.getDrawable(i7).mutate();
            int i8 = C3301R.C3303drawable.msg_reply_small;
            chat_msgInRepliesDrawable = resources.getDrawable(i8).mutate();
            chat_msgInRepliesSelectedDrawable = resources.getDrawable(i8).mutate();
            chat_msgOutRepliesDrawable = resources.getDrawable(i8).mutate();
            chat_msgOutRepliesSelectedDrawable = resources.getDrawable(i8).mutate();
            int i9 = C3301R.C3303drawable.msg_pin_mini;
            chat_msgInPinnedDrawable = resources.getDrawable(i9).mutate();
            chat_msgInPinnedSelectedDrawable = resources.getDrawable(i9).mutate();
            chat_msgOutPinnedDrawable = resources.getDrawable(i9).mutate();
            chat_msgOutPinnedSelectedDrawable = resources.getDrawable(i9).mutate();
            chat_msgMediaPinnedDrawable = resources.getDrawable(i9).mutate();
            chat_msgStickerPinnedDrawable = resources.getDrawable(i9).mutate();
            chat_msgMediaViewsDrawable = resources.getDrawable(i7).mutate();
            chat_msgMediaRepliesDrawable = resources.getDrawable(i8).mutate();
            chat_msgStickerViewsDrawable = resources.getDrawable(i7).mutate();
            chat_msgStickerRepliesDrawable = resources.getDrawable(i8).mutate();
            int i10 = C3301R.C3303drawable.msg_actions;
            chat_msgInMenuDrawable = resources.getDrawable(i10).mutate();
            chat_msgInMenuSelectedDrawable = resources.getDrawable(i10).mutate();
            chat_msgOutMenuDrawable = resources.getDrawable(i10).mutate();
            chat_msgOutMenuSelectedDrawable = resources.getDrawable(i10).mutate();
            chat_msgMediaMenuDrawable = resources.getDrawable(C3301R.C3303drawable.video_actions);
            int i11 = C3301R.C3303drawable.msg_instant;
            chat_msgInInstantDrawable = resources.getDrawable(i11).mutate();
            chat_msgOutInstantDrawable = resources.getDrawable(i11).mutate();
            chat_msgErrorDrawable = resources.getDrawable(C3301R.C3303drawable.msg_warning);
            chat_muteIconDrawable = resources.getDrawable(C3301R.C3303drawable.list_mute).mutate();
            chat_lockIconDrawable = resources.getDrawable(i6);
            Drawable[] drawableArr = chat_msgInCallDrawable;
            int i12 = C3301R.C3303drawable.chat_calls_voice;
            drawableArr[0] = resources.getDrawable(i12).mutate();
            chat_msgInCallSelectedDrawable[0] = resources.getDrawable(i12).mutate();
            chat_msgOutCallDrawable[0] = resources.getDrawable(i12).mutate();
            chat_msgOutCallSelectedDrawable[0] = resources.getDrawable(i12).mutate();
            Drawable[] drawableArr2 = chat_msgInCallDrawable;
            int i13 = C3301R.C3303drawable.chat_calls_video;
            drawableArr2[1] = resources.getDrawable(i13).mutate();
            chat_msgInCallSelectedDrawable[1] = resources.getDrawable(i13).mutate();
            chat_msgOutCallDrawable[1] = resources.getDrawable(i13).mutate();
            chat_msgOutCallSelectedDrawable[1] = resources.getDrawable(i13).mutate();
            chat_msgCallUpGreenDrawable = resources.getDrawable(C3301R.C3303drawable.chat_calls_outgoing).mutate();
            int i14 = C3301R.C3303drawable.chat_calls_incoming;
            chat_msgCallDownRedDrawable = resources.getDrawable(i14).mutate();
            chat_msgCallDownGreenDrawable = resources.getDrawable(i14).mutate();
            for (int i15 = 0; i15 < 2; i15++) {
                chat_pollCheckDrawable[i15] = resources.getDrawable(C3301R.C3303drawable.poll_right).mutate();
                chat_pollCrossDrawable[i15] = resources.getDrawable(C3301R.C3303drawable.poll_wrong).mutate();
                chat_pollHintDrawable[i15] = resources.getDrawable(C3301R.C3303drawable.msg_emoji_objects).mutate();
                chat_psaHelpDrawable[i15] = resources.getDrawable(C3301R.C3303drawable.msg_psa).mutate();
            }
            int i16 = C3301R.C3303drawable.ic_call_made_green_18dp;
            calllog_msgCallUpRedDrawable = resources.getDrawable(i16).mutate();
            calllog_msgCallUpGreenDrawable = resources.getDrawable(i16).mutate();
            int i17 = C3301R.C3303drawable.ic_call_received_green_18dp;
            calllog_msgCallDownRedDrawable = resources.getDrawable(i17).mutate();
            calllog_msgCallDownGreenDrawable = resources.getDrawable(i17).mutate();
            chat_msgAvatarLiveLocationDrawable = resources.getDrawable(C3301R.C3303drawable.livepin).mutate();
            chat_inlineResultFile = resources.getDrawable(C3301R.C3303drawable.bot_file);
            chat_inlineResultAudio = resources.getDrawable(C3301R.C3303drawable.bot_music);
            chat_inlineResultLocation = resources.getDrawable(C3301R.C3303drawable.bot_location);
            chat_redLocationIcon = resources.getDrawable(C3301R.C3303drawable.map_pin).mutate();
            chat_botLinkDrawable = resources.getDrawable(C3301R.C3303drawable.bot_link);
            chat_botInlineDrawable = resources.getDrawable(C3301R.C3303drawable.bot_lines);
            chat_botCardDrawable = resources.getDrawable(C3301R.C3303drawable.bot_card);
            chat_botWebViewDrawable = resources.getDrawable(C3301R.C3303drawable.bot_webview);
            chat_botInviteDrawable = resources.getDrawable(C3301R.C3303drawable.bot_invite);
            chat_commentDrawable = resources.getDrawable(C3301R.C3303drawable.msg_msgbubble);
            chat_commentStickerDrawable = resources.getDrawable(C3301R.C3303drawable.msg_msgbubble2);
            chat_commentArrowDrawable = resources.getDrawable(C3301R.C3303drawable.msg_arrowright);
            chat_gradientLeftDrawable = resources.getDrawable(C3301R.C3303drawable.gradient_left);
            chat_gradientRightDrawable = resources.getDrawable(C3301R.C3303drawable.gradient_right);
            chat_contextResult_shadowUnderSwitchDrawable = resources.getDrawable(C3301R.C3303drawable.header_shadow).mutate();
            chat_attachButtonDrawables[0] = new RLottieDrawable(C3301R.C3306raw.attach_gallery, "attach_gallery", AndroidUtilities.m50dp(26), AndroidUtilities.m50dp(26));
            chat_attachButtonDrawables[1] = new RLottieDrawable(C3301R.C3306raw.attach_music, "attach_music", AndroidUtilities.m50dp(26), AndroidUtilities.m50dp(26));
            chat_attachButtonDrawables[2] = new RLottieDrawable(C3301R.C3306raw.attach_file, "attach_file", AndroidUtilities.m50dp(26), AndroidUtilities.m50dp(26));
            chat_attachButtonDrawables[3] = new RLottieDrawable(C3301R.C3306raw.attach_contact, "attach_contact", AndroidUtilities.m50dp(26), AndroidUtilities.m50dp(26));
            chat_attachButtonDrawables[4] = new RLottieDrawable(C3301R.C3306raw.attach_location, "attach_location", AndroidUtilities.m50dp(26), AndroidUtilities.m50dp(26));
            chat_attachButtonDrawables[5] = new RLottieDrawable(C3301R.C3306raw.attach_poll, "attach_poll", AndroidUtilities.m50dp(26), AndroidUtilities.m50dp(26));
            chat_attachButtonDrawables[6] = new RLottieDrawable(C3301R.C3306raw.fork_attach_wallet, "attach_wallet", AndroidUtilities.m50dp(26), AndroidUtilities.m50dp(26));
            chat_attachButtonDrawables[7] = new RLottieDrawable(C3301R.C3306raw.fork_attach_binance, "attach_binance", AndroidUtilities.m50dp(26), AndroidUtilities.m50dp(26));
            chat_attachButtonDrawables[8] = new RLottieDrawable(C3301R.C3306raw.fork_attach_templates, "attach_templates", AndroidUtilities.m50dp(26), AndroidUtilities.m50dp(26));
            chat_attachEmptyDrawable = resources.getDrawable(C3301R.C3303drawable.nophotos3);
            chat_shareIconDrawable = resources.getDrawable(C3301R.C3303drawable.share_arrow).mutate();
            chat_replyIconDrawable = resources.getDrawable(C3301R.C3303drawable.fast_reply);
            chat_goIconDrawable = resources.getDrawable(C3301R.C3303drawable.message_arrow);
            int m50dp = AndroidUtilities.m50dp(2);
            RectF rectF = new RectF();
            chat_filePath[0] = new Path();
            chat_filePath[0].moveTo(AndroidUtilities.m50dp(7), AndroidUtilities.m50dp(3));
            chat_filePath[0].lineTo(AndroidUtilities.m50dp(14), AndroidUtilities.m50dp(3));
            chat_filePath[0].lineTo(AndroidUtilities.m50dp(21), AndroidUtilities.m50dp(10));
            chat_filePath[0].lineTo(AndroidUtilities.m50dp(21), AndroidUtilities.m50dp(20));
            int i18 = m50dp * 2;
            rectF.set(AndroidUtilities.m50dp(21) - i18, AndroidUtilities.m50dp(19) - m50dp, AndroidUtilities.m50dp(21), AndroidUtilities.m50dp(19) + m50dp);
            chat_filePath[0].arcTo(rectF, BitmapDescriptorFactory.HUE_RED, 90.0f, false);
            chat_filePath[0].lineTo(AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(21));
            rectF.set(AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(19) - m50dp, AndroidUtilities.m50dp(5) + i18, AndroidUtilities.m50dp(19) + m50dp);
            chat_filePath[0].arcTo(rectF, 90.0f, 90.0f, false);
            chat_filePath[0].lineTo(AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(4));
            rectF.set(AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(3), AndroidUtilities.m50dp(5) + i18, AndroidUtilities.m50dp(3) + i18);
            chat_filePath[0].arcTo(rectF, 180.0f, 90.0f, false);
            chat_filePath[0].close();
            chat_filePath[1] = new Path();
            chat_filePath[1].moveTo(AndroidUtilities.m50dp(14), AndroidUtilities.m50dp(5));
            chat_filePath[1].lineTo(AndroidUtilities.m50dp(19), AndroidUtilities.m50dp(10));
            chat_filePath[1].lineTo(AndroidUtilities.m50dp(14), AndroidUtilities.m50dp(10));
            chat_filePath[1].close();
            chat_backupIconDrawable = resources.getDrawable(C3301R.C3303drawable.fork_settings_filled).mutate();
            chat_flameIcon = resources.getDrawable(C3301R.C3303drawable.burn).mutate();
            chat_gifIcon = resources.getDrawable(C3301R.C3303drawable.msg_round_gif_m).mutate();
            Drawable[] drawableArr3 = chat_fileStatesDrawable[0];
            int m50dp2 = AndroidUtilities.m50dp(44);
            int i19 = C3301R.C3303drawable.msg_round_play_m;
            drawableArr3[0] = createCircleDrawableWithIcon(m50dp2, i19);
            chat_fileStatesDrawable[0][1] = createCircleDrawableWithIcon(AndroidUtilities.m50dp(44), i19);
            Drawable[] drawableArr4 = chat_fileStatesDrawable[1];
            int m50dp3 = AndroidUtilities.m50dp(44);
            int i20 = C3301R.C3303drawable.msg_round_pause_m;
            drawableArr4[0] = createCircleDrawableWithIcon(m50dp3, i20);
            chat_fileStatesDrawable[1][1] = createCircleDrawableWithIcon(AndroidUtilities.m50dp(44), i20);
            Drawable[] drawableArr5 = chat_fileStatesDrawable[2];
            int m50dp4 = AndroidUtilities.m50dp(44);
            int i21 = C3301R.C3303drawable.msg_round_load_m;
            drawableArr5[0] = createCircleDrawableWithIcon(m50dp4, i21);
            chat_fileStatesDrawable[2][1] = createCircleDrawableWithIcon(AndroidUtilities.m50dp(44), i21);
            Drawable[] drawableArr6 = chat_fileStatesDrawable[3];
            int m50dp5 = AndroidUtilities.m50dp(44);
            int i22 = C3301R.C3303drawable.msg_round_file_s;
            drawableArr6[0] = createCircleDrawableWithIcon(m50dp5, i22);
            chat_fileStatesDrawable[3][1] = createCircleDrawableWithIcon(AndroidUtilities.m50dp(44), i22);
            Drawable[] drawableArr7 = chat_fileStatesDrawable[4];
            int m50dp6 = AndroidUtilities.m50dp(44);
            int i23 = C3301R.C3303drawable.msg_round_cancel_m;
            drawableArr7[0] = createCircleDrawableWithIcon(m50dp6, i23);
            chat_fileStatesDrawable[4][1] = createCircleDrawableWithIcon(AndroidUtilities.m50dp(44), i23);
            Drawable[] drawableArr8 = chat_contactDrawable;
            int m50dp7 = AndroidUtilities.m50dp(44);
            int i24 = C3301R.C3303drawable.msg_contact;
            drawableArr8[0] = createCircleDrawableWithIcon(m50dp7, i24);
            chat_contactDrawable[1] = createCircleDrawableWithIcon(AndroidUtilities.m50dp(44), i24);
            Drawable[] drawableArr9 = chat_locationDrawable;
            int i25 = C3301R.C3303drawable.msg_location;
            drawableArr9[0] = resources.getDrawable(i25).mutate();
            chat_locationDrawable[1] = resources.getDrawable(i25).mutate();
            chat_composeShadowDrawable = context.getResources().getDrawable(C3301R.C3303drawable.compose_panel_shadow).mutate();
            chat_composeShadowRoundDrawable = context.getResources().getDrawable(C3301R.C3303drawable.sheet_shadow_round).mutate();
            chat_translateIconDrawable = AppCompatResources.getDrawable(context, C3301R.C3303drawable.msg_translate);
            chat_editIconDrawable = AppCompatResources.getDrawable(context, C3301R.C3303drawable.msg_edit);
            try {
                int m50dp8 = AndroidUtilities.roundMessageSize + AndroidUtilities.m50dp(6);
                Bitmap createBitmap = Bitmap.createBitmap(m50dp8, m50dp8, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                Paint paint = new Paint(1);
                paint.setColor(0);
                paint.setStyle(Paint.Style.FILL);
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                Paint paint2 = new Paint(1);
                paint2.setShadowLayer(AndroidUtilities.m50dp(4), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1593835520);
                int i26 = 0;
                while (i26 < 2) {
                    canvas.drawCircle(m50dp8 / 2, m50dp8 / 2, (AndroidUtilities.roundMessageSize / 2) - AndroidUtilities.m50dp(1), i26 == 0 ? paint2 : paint);
                    i26++;
                }
                try {
                    canvas.setBitmap(null);
                } catch (Exception unused) {
                }
                chat_roundVideoShadow = new BitmapDrawable(createBitmap);
            } catch (Throwable unused2) {
            }
            defaultChatDrawables.clear();
            defaultChatDrawableColorKeys.clear();
            addChatDrawable("drawableMsgOutBookmark", chat_msgOutBookmarkDrawable, "chat_outViews");
            addChatDrawable("drawableMsgOutBookmarkSelected", chat_msgOutBookmarkSelectedDrawable, "chat_outViewsSelected");
            addChatDrawable("drawableMsgStickerBookmark", chat_msgStickerBookmarkDrawable, "chat_serviceText");
            addChatDrawable("drawableEditIcon", chat_editIconDrawable, "chat_serviceIcon");
            addChatDrawable("drawableBotInline", chat_botInlineDrawable, "chat_serviceIcon");
            addChatDrawable("drawableBotWebView", chat_botWebViewDrawable, "chat_serviceIcon");
            addChatDrawable("drawableBotLink", chat_botLinkDrawable, "chat_serviceIcon");
            addChatDrawable("drawable_botInvite", chat_botInviteDrawable, "chat_serviceIcon");
            addChatDrawable("drawableGoIcon", chat_goIconDrawable, "chat_serviceIcon");
            addChatDrawable("drawableCommentSticker", chat_commentStickerDrawable, "chat_serviceIcon");
            addChatDrawable("drawableMsgError", chat_msgErrorDrawable, "chat_sentErrorIcon");
            addChatDrawable("drawableMsgIn", chat_msgInDrawable, null);
            addChatDrawable("drawableMsgInSelected", chat_msgInSelectedDrawable, null);
            addChatDrawable("drawableMsgInMedia", chat_msgInMediaDrawable, null);
            addChatDrawable("drawableMsgInMediaSelected", chat_msgInMediaSelectedDrawable, null);
            addChatDrawable("drawableMsgInInstant", chat_msgInInstantDrawable, "chat_inInstant");
            addChatDrawable("drawableMsgOut", chat_msgOutDrawable, null);
            addChatDrawable("drawableMsgOutSelected", chat_msgOutSelectedDrawable, null);
            addChatDrawable("drawableMsgOutMedia", chat_msgOutMediaDrawable, null);
            addChatDrawable("drawableMsgOutMediaSelected", chat_msgOutMediaSelectedDrawable, null);
            addChatDrawable("drawableMsgOutCallAudio", chat_msgOutCallDrawable[0], "chat_outInstant");
            addChatDrawable("drawableMsgOutCallAudioSelected", chat_msgOutCallSelectedDrawable[0], "chat_outInstantSelected");
            addChatDrawable("drawableMsgOutCallVideo", chat_msgOutCallDrawable[1], "chat_outInstant");
            addChatDrawable("drawableMsgOutCallVideo", chat_msgOutCallSelectedDrawable[1], "chat_outInstantSelected");
            addChatDrawable("drawableMsgOutCheck", chat_msgOutCheckDrawable, "chat_outSentCheck");
            addChatDrawable("drawableMsgOutCheckSelected", chat_msgOutCheckSelectedDrawable, "chat_outSentCheckSelected");
            addChatDrawable("drawableMsgOutCheckRead", chat_msgOutCheckReadDrawable, "chat_outSentCheckRead");
            addChatDrawable("drawableMsgOutCheckReadSelected", chat_msgOutCheckReadSelectedDrawable, "chat_outSentCheckReadSelected");
            addChatDrawable("drawableMsgOutHalfCheck", chat_msgOutHalfCheckDrawable, "chat_outSentCheckRead");
            addChatDrawable("drawableMsgOutHalfCheckSelected", chat_msgOutHalfCheckSelectedDrawable, "chat_outSentCheckReadSelected");
            addChatDrawable("drawableMsgOutInstant", chat_msgOutInstantDrawable, "chat_outInstant");
            addChatDrawable("drawableMsgOutMenu", chat_msgOutMenuDrawable, "chat_outMenu");
            addChatDrawable("drawableMsgOutMenuSelected", chat_msgOutMenuSelectedDrawable, "chat_outMenuSelected");
            addChatDrawable("drawableMsgOutPinned", chat_msgOutPinnedDrawable, "chat_outViews");
            addChatDrawable("drawableMsgOutPinnedSelected", chat_msgOutPinnedSelectedDrawable, "chat_outViewsSelected");
            addChatDrawable("drawableMsgOutReplies", chat_msgOutRepliesDrawable, "chat_outViews");
            addChatDrawable("drawableMsgOutReplies", chat_msgOutRepliesSelectedDrawable, "chat_outViewsSelected");
            addChatDrawable("drawableMsgOutViews", chat_msgOutViewsDrawable, "chat_outViews");
            addChatDrawable("drawableMsgOutViewsSelected", chat_msgOutViewsSelectedDrawable, "chat_outViewsSelected");
            addChatDrawable("drawableMsgStickerCheck", chat_msgStickerCheckDrawable, "chat_serviceText");
            addChatDrawable("drawableMsgStickerHalfCheck", chat_msgStickerHalfCheckDrawable, "chat_serviceText");
            addChatDrawable("drawableMsgStickerPinned", chat_msgStickerPinnedDrawable, "chat_serviceText");
            addChatDrawable("drawableMsgStickerReplies", chat_msgStickerRepliesDrawable, "chat_serviceText");
            addChatDrawable("drawableMsgStickerViews", chat_msgStickerViewsDrawable, "chat_serviceText");
            addChatDrawable("drawableReplyIcon", chat_replyIconDrawable, "chat_serviceIcon");
            addChatDrawable("drawableShareIcon", chat_shareIconDrawable, "chat_serviceIcon");
            addChatDrawable("drawableMuteIcon", chat_muteIconDrawable, "chat_muteIcon");
            addChatDrawable("drawableLockIcon", chat_lockIconDrawable, "chat_lockIcon");
            addChatDrawable("drawable_chat_pollHintDrawableOut", chat_pollHintDrawable[1], "chat_outPreviewInstantText");
            addChatDrawable("drawable_chat_pollHintDrawableIn", chat_pollHintDrawable[0], "chat_inPreviewInstantText");
            applyChatTheme(z, false);
        }
        if (z || (textPaint = chat_infoPaint) == null) {
            return;
        }
        textPaint.setTextSize(AndroidUtilities.m50dp(12));
        chat_stickerCommentCountPaint.setTextSize(AndroidUtilities.m50dp(11));
        chat_docNamePaint.setTextSize(AndroidUtilities.m50dp(15));
        chat_locationTitlePaint.setTextSize(AndroidUtilities.m50dp(15));
        chat_locationAddressPaint.setTextSize(AndroidUtilities.m50dp(13));
        chat_audioTimePaint.setTextSize(AndroidUtilities.m50dp(12));
        chat_livePaint.setTextSize(AndroidUtilities.m50dp(12));
        chat_audioTitlePaint.setTextSize(AndroidUtilities.m50dp(16));
        chat_audioPerformerPaint.setTextSize(AndroidUtilities.m50dp(15));
        chat_botButtonPaint.setTextSize(AndroidUtilities.m50dp(15));
        chat_contactNamePaint.setTextSize(AndroidUtilities.m50dp(15));
        chat_contactPhonePaint.setTextSize(AndroidUtilities.m50dp(13));
        chat_durationPaint.setTextSize(AndroidUtilities.m50dp(12));
        chat_namePaint.setTextSize(AndroidUtilities.m51dp(f));
        chat_replyNamePaint.setTextSize(AndroidUtilities.m51dp(f));
        chat_replyTextPaint.setTextSize(AndroidUtilities.m51dp(f));
        float f2 = (((SharedConfig.fontSize * 2) + 10) / 3.0f) - 1.0f;
        chat_topicTextPaint.setTextSize(AndroidUtilities.m51dp(f2));
        chat_forwardNamePaint.setTextSize(AndroidUtilities.m51dp(f));
        chat_adminPaint.setTextSize(AndroidUtilities.m51dp(f2));
        int i27 = SharedConfig.fontSize;
        chat_timePaint.setTextSize(AndroidUtilities.m50dp(12));
        chat_gamePaint.setTextSize(AndroidUtilities.m50dp(13));
        chat_shipmentPaint.setTextSize(AndroidUtilities.m50dp(13));
        chat_instantViewPaint.setTextSize(AndroidUtilities.m50dp(13));
        chat_instantViewRectPaint.setStrokeWidth(AndroidUtilities.m50dp(1));
        chat_pollTimerPaint.setStrokeWidth(AndroidUtilities.m51dp(1.1f));
        chat_actionTextPaint.setTextSize(AndroidUtilities.m50dp(Math.max(16, SharedConfig.fontSize) - 2));
        chat_actionTextPaint2.setTextSize(AndroidUtilities.m50dp(Math.max(16, SharedConfig.fontSize) - 2));
        chat_unlockExtendedMediaTextPaint.setTextSize(AndroidUtilities.m50dp(Math.max(16, SharedConfig.fontSize)));
        chat_contextResult_titleTextPaint.setTextSize(AndroidUtilities.m50dp(15));
        chat_contextResult_descriptionTextPaint.setTextSize(AndroidUtilities.m50dp(13));
        chat_radialProgressPaint.setStrokeWidth(AndroidUtilities.m50dp(3));
        chat_radialProgress2Paint.setStrokeWidth(AndroidUtilities.m50dp(2));
        chat_commentTextPaint.setTextSize(AndroidUtilities.m50dp(14));
        chat_commentTextPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
    }

    public static void refreshAttachButtonsColors() {
        int i = 0;
        while (true) {
            RLottieDrawable[] rLottieDrawableArr = chat_attachButtonDrawables;
            if (i >= rLottieDrawableArr.length) {
                return;
            }
            if (rLottieDrawableArr[i] != null) {
                rLottieDrawableArr[i].beginApplyLayerColors();
                if (i == 6) {
                    chat_attachButtonDrawables[i].setLayerColor("Shape Layer 6.**", getNonAnimatedColor("iMe_chat_attach_walletIcon"));
                    chat_attachButtonDrawables[i].setLayerColor("Shape Layer 4.**", getNonAnimatedColor("iMe_chat_attach_walletIcon"));
                } else if (i == 0) {
                    chat_attachButtonDrawables[i].setLayerColor("Color_Mount.**", getNonAnimatedColor("chat_attachGalleryBackground"));
                    chat_attachButtonDrawables[i].setLayerColor("Color_PhotoShadow.**", getNonAnimatedColor("chat_attachGalleryBackground"));
                    chat_attachButtonDrawables[i].setLayerColor("White_Photo.**", getNonAnimatedColor("chat_attachIcon"));
                    chat_attachButtonDrawables[i].setLayerColor("White_BackPhoto.**", getNonAnimatedColor("chat_attachIcon"));
                } else if (i == 1) {
                    chat_attachButtonDrawables[i].setLayerColor("White_Play1.**", getNonAnimatedColor("chat_attachIcon"));
                    chat_attachButtonDrawables[i].setLayerColor("White_Play2.**", getNonAnimatedColor("chat_attachIcon"));
                } else if (i == 2) {
                    chat_attachButtonDrawables[i].setLayerColor("Color_Corner.**", getNonAnimatedColor("chat_attachFileBackground"));
                    chat_attachButtonDrawables[i].setLayerColor("White_List.**", getNonAnimatedColor("chat_attachIcon"));
                } else if (i == 3) {
                    chat_attachButtonDrawables[i].setLayerColor("White_User1.**", getNonAnimatedColor("chat_attachIcon"));
                    chat_attachButtonDrawables[i].setLayerColor("White_User2.**", getNonAnimatedColor("chat_attachIcon"));
                } else if (i == 4) {
                    chat_attachButtonDrawables[i].setLayerColor("Color_Oval.**", getNonAnimatedColor("chat_attachLocationBackground"));
                    chat_attachButtonDrawables[i].setLayerColor("White_Pin.**", getNonAnimatedColor("chat_attachIcon"));
                } else if (i == 5) {
                    chat_attachButtonDrawables[i].setLayerColor("White_Column 1.**", getNonAnimatedColor("chat_attachIcon"));
                    chat_attachButtonDrawables[i].setLayerColor("White_Column 2.**", getNonAnimatedColor("chat_attachIcon"));
                    chat_attachButtonDrawables[i].setLayerColor("White_Column 3.**", getNonAnimatedColor("chat_attachIcon"));
                }
                chat_attachButtonDrawables[i].commitApplyLayerColors();
            }
            i++;
        }
    }

    public static void applyChatTheme(boolean z, boolean z2) {
        if (chat_msgTextPaint == null || chat_msgInDrawable == null || z) {
            return;
        }
        chat_gamePaint.setColor(getColor("chat_previewGameText"));
        chat_durationPaint.setColor(getColor("chat_previewDurationText"));
        chat_botButtonPaint.setColor(getColor("chat_botButtonText"));
        chat_urlPaint.setColor(getColor("chat_linkSelectBackground"));
        chat_outUrlPaint.setColor(getColor("chat_outLinkSelectBackground"));
        chat_deleteProgressPaint.setColor(getColor("chat_secretTimeText"));
        chat_textSearchSelectionPaint.setColor(getColor("chat_textSelectBackground"));
        chat_msgErrorPaint.setColor(getColor("chat_sentError"));
        chat_statusPaint.setColor(getColor("chat_status"));
        chat_statusRecordPaint.setColor(getColor("chat_status"));
        chat_actionTextPaint.setColor(getColor("chat_serviceText"));
        chat_actionTextPaint2.setColor(getColor("chat_serviceText"));
        chat_actionTextPaint.linkColor = getColor("chat_serviceLink");
        chat_unlockExtendedMediaTextPaint.setColor(getColor("chat_serviceText"));
        chat_contextResult_titleTextPaint.setColor(getColor("windowBackgroundWhiteBlackText"));
        chat_composeBackgroundPaint.setColor(getColor("chat_messagePanelBackground"));
        chat_timeBackgroundPaint.setColor(getColor("chat_mediaTimeBackground"));
        setDrawableColorByKey(chat_translateIconDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_editIconDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_msgInSpoilerDrawable, "chat_inInstant");
        setDrawableColorByKey(chat_msgOutSpoilerDrawable, "chat_outInstant");
        setDrawableColorByKey(chat_msgInBookmarkDrawable, "chat_inViews");
        setDrawableColorByKey(chat_msgInBookmarkSelectedDrawable, "chat_inViewsSelected");
        setDrawableColorByKey(chat_msgOutBookmarkDrawable, "chat_outViews");
        setDrawableColorByKey(chat_msgOutBookmarkSelectedDrawable, "chat_outViewsSelected");
        setDrawableColorByKey(chat_msgMediaBookmarkDrawable, "chat_mediaViews");
        setDrawableColorByKey(chat_msgStickerBookmarkDrawable, "chat_serviceText");
        setDrawableColorByKey(chat_msgNoSoundDrawable, "chat_mediaTimeText");
        setDrawableColorByKey(chat_msgInDrawable, "chat_inBubble");
        setDrawableColorByKey(chat_msgInSelectedDrawable, "chat_inBubbleSelected");
        setDrawableColorByKey(chat_msgInMediaDrawable, "chat_inBubble");
        setDrawableColorByKey(chat_msgInMediaSelectedDrawable, "chat_inBubbleSelected");
        setDrawableColorByKey(chat_msgOutCheckDrawable, "chat_outSentCheck");
        setDrawableColorByKey(chat_msgOutCheckSelectedDrawable, "chat_outSentCheckSelected");
        setDrawableColorByKey(chat_msgOutCheckReadDrawable, "chat_outSentCheckRead");
        setDrawableColorByKey(chat_msgOutCheckReadSelectedDrawable, "chat_outSentCheckReadSelected");
        setDrawableColorByKey(chat_msgOutHalfCheckDrawable, "chat_outSentCheckRead");
        setDrawableColorByKey(chat_msgOutHalfCheckSelectedDrawable, "chat_outSentCheckReadSelected");
        setDrawableColorByKey(chat_msgMediaCheckDrawable, "chat_mediaSentCheck");
        setDrawableColorByKey(chat_msgMediaHalfCheckDrawable, "chat_mediaSentCheck");
        setDrawableColorByKey(chat_msgStickerCheckDrawable, "chat_serviceText");
        setDrawableColorByKey(chat_msgStickerHalfCheckDrawable, "chat_serviceText");
        setDrawableColorByKey(chat_msgStickerViewsDrawable, "chat_serviceText");
        setDrawableColorByKey(chat_msgStickerRepliesDrawable, "chat_serviceText");
        setDrawableColorByKey(chat_msgUnlockDrawable, "chat_serviceText");
        setDrawableColorByKey(chat_shareIconDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_replyIconDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_goIconDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_botInlineDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_botWebViewDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_botInviteDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_botLinkDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_msgInViewsDrawable, "chat_inViews");
        setDrawableColorByKey(chat_msgInViewsSelectedDrawable, "chat_inViewsSelected");
        setDrawableColorByKey(chat_msgOutViewsDrawable, "chat_outViews");
        setDrawableColorByKey(chat_msgOutViewsSelectedDrawable, "chat_outViewsSelected");
        setDrawableColorByKey(chat_msgInRepliesDrawable, "chat_inViews");
        setDrawableColorByKey(chat_msgInRepliesSelectedDrawable, "chat_inViewsSelected");
        setDrawableColorByKey(chat_msgOutRepliesDrawable, "chat_outViews");
        setDrawableColorByKey(chat_msgOutRepliesSelectedDrawable, "chat_outViewsSelected");
        setDrawableColorByKey(chat_msgInPinnedDrawable, "chat_inViews");
        setDrawableColorByKey(chat_msgInPinnedSelectedDrawable, "chat_inViewsSelected");
        setDrawableColorByKey(chat_msgOutPinnedDrawable, "chat_outViews");
        setDrawableColorByKey(chat_msgOutPinnedSelectedDrawable, "chat_outViewsSelected");
        setDrawableColorByKey(chat_msgMediaPinnedDrawable, "chat_mediaViews");
        setDrawableColorByKey(chat_msgStickerPinnedDrawable, "chat_serviceText");
        setDrawableColorByKey(chat_msgMediaViewsDrawable, "chat_mediaViews");
        setDrawableColorByKey(chat_msgMediaRepliesDrawable, "chat_mediaViews");
        setDrawableColorByKey(chat_msgInMenuDrawable, "chat_inMenu");
        setDrawableColorByKey(chat_msgInMenuSelectedDrawable, "chat_inMenuSelected");
        setDrawableColorByKey(chat_msgOutMenuDrawable, "chat_outMenu");
        setDrawableColorByKey(chat_msgOutMenuSelectedDrawable, "chat_outMenuSelected");
        setDrawableColorByKey(chat_msgMediaMenuDrawable, "chat_mediaMenu");
        setDrawableColorByKey(chat_msgOutInstantDrawable, "chat_outInstant");
        setDrawableColorByKey(chat_msgInInstantDrawable, "chat_inInstant");
        setDrawableColorByKey(chat_msgErrorDrawable, "chat_sentErrorIcon");
        setDrawableColorByKey(chat_muteIconDrawable, "chat_muteIcon");
        setDrawableColorByKey(chat_lockIconDrawable, "chat_lockIcon");
        setDrawableColorByKey(chat_inlineResultFile, "chat_inlineResultIcon");
        setDrawableColorByKey(chat_inlineResultAudio, "chat_inlineResultIcon");
        setDrawableColorByKey(chat_inlineResultLocation, "chat_inlineResultIcon");
        setDrawableColorByKey(chat_commentDrawable, "chat_inInstant");
        setDrawableColorByKey(chat_commentStickerDrawable, "chat_serviceIcon");
        setDrawableColorByKey(chat_commentArrowDrawable, "chat_inInstant");
        setDrawableColorByKey(chat_gradientLeftDrawable, "chat_stickersHintPanel");
        setDrawableColorByKey(chat_gradientRightDrawable, "chat_stickersHintPanel");
        for (int i = 0; i < 2; i++) {
            setDrawableColorByKey(chat_msgInCallDrawable[i], "chat_inInstant");
            setDrawableColorByKey(chat_msgInCallSelectedDrawable[i], "chat_inInstantSelected");
            setDrawableColorByKey(chat_msgOutCallDrawable[i], "chat_outInstant");
            setDrawableColorByKey(chat_msgOutCallSelectedDrawable[i], "chat_outInstantSelected");
        }
        setDrawableColorByKey(chat_msgCallUpGreenDrawable, "chat_outUpCall");
        setDrawableColorByKey(chat_msgCallDownRedDrawable, "chat_inUpCall");
        setDrawableColorByKey(chat_msgCallDownGreenDrawable, "chat_inDownCall");
        setDrawableColorByKey(calllog_msgCallUpRedDrawable, "calls_callReceivedRedIcon");
        setDrawableColorByKey(calllog_msgCallUpGreenDrawable, "calls_callReceivedGreenIcon");
        setDrawableColorByKey(calllog_msgCallDownRedDrawable, "calls_callReceivedRedIcon");
        setDrawableColorByKey(calllog_msgCallDownGreenDrawable, "calls_callReceivedGreenIcon");
        int i2 = 0;
        while (true) {
            StatusDrawable[] statusDrawableArr = chat_status_drawables;
            if (i2 >= statusDrawableArr.length) {
                break;
            }
            setDrawableColorByKey(statusDrawableArr[i2], "chats_actionMessage");
            i2++;
        }
        for (int i3 = 0; i3 < 5; i3++) {
            setCombinedDrawableColor(chat_fileStatesDrawable[i3][0], getColor("chat_inLoader"), false);
            setCombinedDrawableColor(chat_fileStatesDrawable[i3][0], getColor("chat_inMediaIcon"), true);
            setCombinedDrawableColor(chat_fileStatesDrawable[i3][1], getColor("chat_inLoaderSelected"), false);
            setCombinedDrawableColor(chat_fileStatesDrawable[i3][1], getColor("chat_inMediaIconSelected"), true);
        }
        setCombinedDrawableColor(chat_contactDrawable[0], getColor("chat_inContactBackground"), false);
        setCombinedDrawableColor(chat_contactDrawable[0], getColor("chat_inContactIcon"), true);
        setCombinedDrawableColor(chat_contactDrawable[1], getColor("chat_outContactBackground"), false);
        setCombinedDrawableColor(chat_contactDrawable[1], getColor("chat_outContactIcon"), true);
        setDrawableColor(chat_locationDrawable[0], getColor("chat_inLocationIcon"));
        setDrawableColor(chat_locationDrawable[1], getColor("chat_outLocationIcon"));
        setDrawableColor(chat_pollHintDrawable[0], getColor("chat_inPreviewInstantText"));
        setDrawableColor(chat_pollHintDrawable[1], getColor("chat_outPreviewInstantText"));
        setDrawableColor(chat_psaHelpDrawable[0], getColor("chat_inViews"));
        setDrawableColor(chat_psaHelpDrawable[1], getColor("chat_outViews"));
        setDrawableColorByKey(chat_composeShadowDrawable, "chat_messagePanelShadow");
        setDrawableColorByKey(chat_composeShadowRoundDrawable, "chat_messagePanelBackground");
        int color = getColor("chat_outAudioSeekbarFill") == -1 ? getColor("chat_outBubble") : -1;
        setDrawableColor(chat_pollCheckDrawable[1], color);
        setDrawableColor(chat_pollCrossDrawable[1], color);
        setDrawableColor(chat_attachEmptyDrawable, getColor("chat_attachEmptyImage"));
        if (!z2) {
            applyChatServiceMessageColor();
            applyChatMessageSelectedBackgroundColor();
        }
        refreshAttachButtonsColors();
    }

    public static void applyChatServiceMessageColor() {
        applyChatServiceMessageColor(null, null, wallpaper);
    }

    public static boolean hasGradientService() {
        return serviceBitmapShader != null;
    }

    public static void applyServiceShaderMatrixForView(View view, View view2) {
        if (view == null || view2 == null) {
            return;
        }
        view.getLocationOnScreen(viewPos);
        int[] iArr = viewPos;
        int i = iArr[0];
        int i2 = iArr[1];
        view2.getLocationOnScreen(iArr);
        applyServiceShaderMatrix(view2.getMeasuredWidth(), view2.getMeasuredHeight(), i, i2 - viewPos[1]);
    }

    public static void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
        applyServiceShaderMatrix(serviceBitmap, serviceBitmapShader, serviceBitmapMatrix, i, i2, f, f2);
    }

    public static void applyServiceShaderMatrix(Bitmap bitmap, BitmapShader bitmapShader, Matrix matrix, int i, int i2, float f, float f2) {
        if (bitmapShader == null) {
            return;
        }
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float f3 = i;
        float f4 = i2;
        float max = Math.max(f3 / width, f4 / height);
        matrix.reset();
        matrix.setTranslate(((f3 - (width * max)) / 2.0f) - f, ((f4 - (height * max)) / 2.0f) - f2);
        matrix.preScale(max, max);
        bitmapShader.setLocalMatrix(matrix);
    }

    public static void applyChatServiceMessageColor(int[] iArr, Drawable drawable) {
        applyChatServiceMessageColor(iArr, drawable, wallpaper);
    }

    public static void applyChatServiceMessageColor(int[] iArr, Drawable drawable, Drawable drawable2) {
        Integer num;
        Integer num2;
        Integer num3;
        if (chat_actionBackgroundPaint == null) {
            return;
        }
        serviceMessageColor = serviceMessageColorBackup;
        serviceSelectedMessageColor = serviceSelectedMessageColorBackup;
        boolean z = true;
        if (iArr != null && iArr.length >= 2) {
            num = Integer.valueOf(iArr[0]);
            num2 = Integer.valueOf(iArr[1]);
            serviceMessageColor = iArr[0];
            serviceSelectedMessageColor = iArr[1];
        } else {
            num = currentColors.get("chat_serviceBackground");
            num2 = currentColors.get("chat_serviceBackgroundSelected");
        }
        if (num == null) {
            num = Integer.valueOf(serviceMessageColor);
            num3 = Integer.valueOf(serviceMessage2Color);
        } else {
            num3 = num;
        }
        if (num2 == null) {
            num2 = Integer.valueOf(serviceSelectedMessageColor);
        }
        if (drawable == null) {
            drawable = drawable2;
        }
        boolean z2 = drawable instanceof MotionBackgroundDrawable;
        if (!z2 || SharedConfig.getDevicePerformanceClass() == 0 || !LiteMode.isEnabled(32)) {
            z = false;
        }
        if (z) {
            Bitmap bitmap = ((MotionBackgroundDrawable) drawable).getBitmap();
            if (serviceBitmap != bitmap) {
                serviceBitmap = bitmap;
                Bitmap bitmap2 = serviceBitmap;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                serviceBitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
                if (serviceBitmapMatrix == null) {
                    serviceBitmapMatrix = new Matrix();
                }
            }
            setDrawableColor(chat_msgStickerPinnedDrawable, -1);
            setDrawableColor(chat_msgStickerBookmarkDrawable, -1);
            setDrawableColor(chat_msgStickerCheckDrawable, -1);
            setDrawableColor(chat_msgStickerHalfCheckDrawable, -1);
            setDrawableColor(chat_msgStickerViewsDrawable, -1);
            setDrawableColor(chat_msgStickerRepliesDrawable, -1);
            chat_actionTextPaint.setColor(-1);
            chat_actionTextPaint2.setColor(-1);
            chat_actionTextPaint.linkColor = -1;
            chat_unlockExtendedMediaTextPaint.setColor(-1);
            chat_botButtonPaint.setColor(-1);
            setDrawableColor(chat_commentStickerDrawable, -1);
            setDrawableColor(chat_shareIconDrawable, -1);
            setDrawableColor(chat_replyIconDrawable, -1);
            setDrawableColor(chat_goIconDrawable, -1);
            setDrawableColor(chat_botInlineDrawable, -1);
            setDrawableColor(chat_botWebViewDrawable, -1);
            setDrawableColor(chat_botInviteDrawable, -1);
            setDrawableColor(chat_botLinkDrawable, -1);
        } else {
            serviceBitmap = null;
            serviceBitmapShader = null;
            setDrawableColorByKey(chat_msgStickerPinnedDrawable, "chat_serviceText");
            setDrawableColorByKey(chat_msgStickerBookmarkDrawable, "chat_serviceText");
            setDrawableColorByKey(chat_msgStickerCheckDrawable, "chat_serviceText");
            setDrawableColorByKey(chat_msgStickerHalfCheckDrawable, "chat_serviceText");
            setDrawableColorByKey(chat_msgStickerViewsDrawable, "chat_serviceText");
            setDrawableColorByKey(chat_msgStickerRepliesDrawable, "chat_serviceText");
            chat_actionTextPaint.setColor(getColor("chat_serviceText"));
            chat_actionTextPaint2.setColor(getColor("chat_serviceText"));
            chat_actionTextPaint.linkColor = getColor("chat_serviceLink");
            chat_unlockExtendedMediaTextPaint.setColor(getColor("chat_serviceText"));
            setDrawableColorByKey(chat_commentStickerDrawable, "chat_serviceIcon");
            setDrawableColorByKey(chat_shareIconDrawable, "chat_serviceIcon");
            setDrawableColorByKey(chat_replyIconDrawable, "chat_serviceIcon");
            setDrawableColorByKey(chat_goIconDrawable, "chat_serviceIcon");
            setDrawableColorByKey(chat_botInlineDrawable, "chat_serviceIcon");
            setDrawableColorByKey(chat_botWebViewDrawable, "chat_serviceIcon");
            setDrawableColorByKey(chat_botInviteDrawable, "chat_serviceIcon");
            setDrawableColorByKey(chat_botLinkDrawable, "chat_serviceIcon");
            chat_botButtonPaint.setColor(getColor("chat_botButtonText"));
        }
        chat_actionBackgroundPaint.setColor(num.intValue());
        chat_actionBackgroundSelectedPaint.setColor(num2.intValue());
        chat_actionBackgroundPaint2.setColor(num3.intValue());
        num.intValue();
        if (serviceBitmapShader != null && (currentColors.get("chat_serviceBackground") == null || z2)) {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(((MotionBackgroundDrawable) drawable).getIntensity() >= 0 ? 1.8f : 0.5f);
            chat_actionBackgroundPaint.setShader(serviceBitmapShader);
            chat_actionBackgroundPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            chat_actionBackgroundPaint.setAlpha(127);
            chat_actionBackgroundSelectedPaint.setShader(serviceBitmapShader);
            chat_actionBackgroundSelectedPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            chat_actionBackgroundSelectedPaint.setAlpha(200);
            return;
        }
        chat_actionBackgroundPaint.setColorFilter(null);
        chat_actionBackgroundPaint.setShader(null);
        chat_actionBackgroundSelectedPaint.setColorFilter(null);
        chat_actionBackgroundSelectedPaint.setShader(null);
    }

    public static void applyChatMessageSelectedBackgroundColor() {
        applyChatMessageSelectedBackgroundColor(null, wallpaper);
    }

    public static void applyChatMessageSelectedBackgroundColor(Drawable drawable, Drawable drawable2) {
        Bitmap bitmap;
        if (chat_messageBackgroundSelectedPaint == null) {
            return;
        }
        Integer num = currentColors.get("chat_selectedBackground");
        if (drawable == null) {
            drawable = drawable2;
        }
        boolean z = (drawable instanceof MotionBackgroundDrawable) && SharedConfig.getDevicePerformanceClass() != 0 && num == null;
        if (z && serviceBitmap != (bitmap = ((MotionBackgroundDrawable) drawable).getBitmap())) {
            serviceBitmap = bitmap;
            Bitmap bitmap2 = serviceBitmap;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            serviceBitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
            if (serviceBitmapMatrix == null) {
                serviceBitmapMatrix = new Matrix();
            }
        }
        if (serviceBitmapShader != null && num == null && z) {
            ColorMatrix colorMatrix = new ColorMatrix();
            AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 2.5f);
            AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 0.75f);
            chat_messageBackgroundSelectedPaint.setShader(serviceBitmapShader);
            chat_messageBackgroundSelectedPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            chat_messageBackgroundSelectedPaint.setAlpha(64);
            return;
        }
        chat_messageBackgroundSelectedPaint.setColor(num == null ? 1073741824 : num.intValue());
        chat_messageBackgroundSelectedPaint.setColorFilter(null);
        chat_messageBackgroundSelectedPaint.setShader(null);
    }

    public static void createProfileResources(Context context) {
        if (profile_verifiedDrawable == null) {
            profile_aboutTextPaint = new TextPaint(1);
            Resources resources = context.getResources();
            profile_verifiedDrawable = resources.getDrawable(C3301R.C3303drawable.verified_area).mutate();
            profile_verifiedCheckDrawable = resources.getDrawable(C3301R.C3303drawable.verified_check).mutate();
            applyProfileTheme();
        }
        profile_aboutTextPaint.setTextSize(AndroidUtilities.m50dp(16));
    }

    public static void applyProfileTheme() {
        if (profile_verifiedDrawable == null) {
            return;
        }
        profile_aboutTextPaint.setColor(getColor("windowBackgroundWhiteBlackText"));
        profile_aboutTextPaint.linkColor = getColor("windowBackgroundWhiteLinkText");
        setDrawableColorByKey(profile_verifiedDrawable, "profile_verifiedBackground");
        setDrawableColorByKey(profile_verifiedCheckDrawable, "profile_verifiedCheck");
    }

    public static Drawable getThemedDrawable(Context context, int i, String str, ResourcesProvider resourcesProvider) {
        return getThemedDrawable(context, i, getColor(str, resourcesProvider));
    }

    public static Drawable getThemedDrawable(Context context, int i, String str) {
        return getThemedDrawable(context, i, getColor(str));
    }

    public static Drawable getThemedDrawable(Context context, int i, int i2) {
        if (context == null) {
            return null;
        }
        Drawable mutate = context.getResources().getDrawable(i).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
        return mutate;
    }

    public static int getDefaultColor(String str) {
        Integer num = defaultColors.get(str);
        if (num == null) {
            return (str.equals("chats_menuTopShadow") || str.equals("chats_menuTopBackground") || str.equals("chats_menuTopShadowCats") || str.equals("key_chat_wallpaper_gradient_to2") || str.equals("key_chat_wallpaper_gradient_to3")) ? 0 : -65536;
        }
        return num.intValue();
    }

    public static boolean hasThemeKey(String str) {
        return currentColors.containsKey(str);
    }

    public static Integer getColorOrNull(String str) {
        Integer num = currentColors.get(str);
        if (num == null) {
            if (fallbackKeys.get(str) != null) {
                num = currentColors.get(str);
            }
            if (num == null) {
                num = defaultColors.get(str);
            }
        }
        return num != null ? ("windowBackgroundWhite".equals(str) || "windowBackgroundGray".equals(str) || "actionBarDefault".equals(str) || "actionBarDefaultArchived".equals(str)) ? Integer.valueOf(num.intValue() | (-16777216)) : num : num;
    }

    public static void setAnimatingColor(boolean z) {
        animatingColors = z ? new HashMap<>() : null;
    }

    public static boolean isAnimatingColor() {
        return animatingColors != null;
    }

    public static void setAnimatedColor(String str, int i) {
        HashMap<String, Integer> hashMap = animatingColors;
        if (hashMap == null) {
            return;
        }
        hashMap.put(str, Integer.valueOf(i));
    }

    public static int getDefaultAccentColor(String str) {
        ThemeAccent accent;
        Integer num = currentColorsNoAccent.get(str);
        if (num == null || (accent = currentTheme.getAccent(false)) == null) {
            return 0;
        }
        float[] tempHsv = getTempHsv(1);
        float[] tempHsv2 = getTempHsv(2);
        Color.colorToHSV(currentTheme.accentBaseColor, tempHsv);
        Color.colorToHSV(accent.accentColor, tempHsv2);
        return changeColorAccent(tempHsv, tempHsv2, num.intValue(), currentTheme.isDark());
    }

    public static int getNonAnimatedColor(String str) {
        return getColor(str, null, true);
    }

    public static int getColor(String str, ResourcesProvider resourcesProvider) {
        Integer color;
        if (resourcesProvider != null && (color = resourcesProvider.getColor(str)) != null) {
            return color.intValue();
        }
        return getColor(str);
    }

    public static int getColor(String str) {
        return getColor(str, null, false);
    }

    public static int getColor(String str, boolean[] zArr) {
        return getColor(str, zArr, false);
    }

    public static int getColor(String str, boolean[] zArr, boolean z) {
        boolean isDefaultMyMessages;
        HashMap<String, Integer> hashMap;
        Integer num;
        if (!z && (hashMap = animatingColors) != null && (num = hashMap.get(str)) != null) {
            return num.intValue();
        }
        if (serviceBitmapShader == null || !("chat_serviceText".equals(str) || "chat_serviceLink".equals(str) || "chat_serviceIcon".equals(str) || "chat_stickerReplyLine".equals(str) || "chat_stickerReplyNameText".equals(str) || "chat_stickerReplyMessageText".equals(str))) {
            if (currentTheme == defaultTheme) {
                if (myMessagesBubblesColorKeys.contains(str)) {
                    isDefaultMyMessages = currentTheme.isDefaultMyMessagesBubbles();
                } else {
                    isDefaultMyMessages = myMessagesColorKeys.contains(str) ? currentTheme.isDefaultMyMessages() : ("chat_wallpaper".equals(str) || "chat_wallpaper_gradient_to".equals(str) || "key_chat_wallpaper_gradient_to2".equals(str) || "key_chat_wallpaper_gradient_to3".equals(str)) ? false : currentTheme.isDefaultMainAccent();
                }
                if (isDefaultMyMessages) {
                    if (str.equals("chat_serviceBackground")) {
                        return serviceMessageColor;
                    }
                    if (str.equals("chat_serviceBackgroundSelected")) {
                        return serviceSelectedMessageColor;
                    }
                    return getDefaultColor(str);
                }
            }
            Integer num2 = currentColors.get(str);
            if (num2 == null) {
                String str2 = fallbackKeys.get(str);
                if (str2 != null) {
                    num2 = currentColors.get(str2);
                }
                if (num2 == null) {
                    if (zArr != null) {
                        zArr[0] = true;
                    }
                    if (str.equals("chat_serviceBackground")) {
                        return serviceMessageColor;
                    }
                    if (str.equals("chat_serviceBackgroundSelected")) {
                        return serviceSelectedMessageColor;
                    }
                    return getDefaultColor(str);
                }
            }
            if ("windowBackgroundWhite".equals(str) || "windowBackgroundGray".equals(str) || "actionBarDefault".equals(str) || "actionBarDefaultArchived".equals(str)) {
                num2 = Integer.valueOf(num2.intValue() | (-16777216));
            }
            return num2.intValue();
        }
        return -1;
    }

    public static void setColor(String str, int i, boolean z) {
        if (str.equals("chat_wallpaper") || str.equals("chat_wallpaper_gradient_to") || str.equals("key_chat_wallpaper_gradient_to2") || str.equals("key_chat_wallpaper_gradient_to3") || str.equals("windowBackgroundWhite") || str.equals("windowBackgroundGray") || str.equals("actionBarDefault") || str.equals("actionBarDefaultArchived")) {
            i |= -16777216;
        }
        if (z) {
            currentColors.remove(str);
        } else {
            currentColors.put(str, Integer.valueOf(i));
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2095843767:
                if (str.equals("chat_wallpaper_gradient_rotation")) {
                    c = 0;
                    break;
                }
                break;
            case -1625862693:
                if (str.equals("chat_wallpaper")) {
                    c = 1;
                    break;
                }
                break;
            case -1397026623:
                if (str.equals("windowBackgroundGray")) {
                    c = 2;
                    break;
                }
                break;
            case -633951866:
                if (str.equals("chat_wallpaper_gradient_to")) {
                    c = 3;
                    break;
                }
                break;
            case -552118908:
                if (str.equals("actionBarDefault")) {
                    c = 4;
                    break;
                }
                break;
            case -391617936:
                if (str.equals("chat_selectedBackground")) {
                    c = 5;
                    break;
                }
                break;
            case 426061980:
                if (str.equals("chat_serviceBackground")) {
                    c = 6;
                    break;
                }
                break;
            case 1381936524:
                if (str.equals("key_chat_wallpaper_gradient_to2")) {
                    c = 7;
                    break;
                }
                break;
            case 1381936525:
                if (str.equals("key_chat_wallpaper_gradient_to3")) {
                    c = '\b';
                    break;
                }
                break;
            case 1573464919:
                if (str.equals("chat_serviceBackgroundSelected")) {
                    c = '\t';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 3:
            case 7:
            case '\b':
                reloadWallpaper();
                return;
            case 2:
                if (Build.VERSION.SDK_INT >= 26) {
                    NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, new Object[0]);
                    return;
                }
                return;
            case 4:
                if (Build.VERSION.SDK_INT >= 23) {
                    NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, new Object[0]);
                    return;
                }
                return;
            case 5:
                applyChatMessageSelectedBackgroundColor();
                return;
            case 6:
            case '\t':
                applyChatServiceMessageColor();
                return;
            default:
                return;
        }
    }

    public static void setDefaultColor(String str, int i) {
        defaultColors.put(str, Integer.valueOf(i));
    }

    public static void setThemeWallpaper(ThemeInfo themeInfo, Bitmap bitmap, File file) {
        currentColors.remove("chat_wallpaper");
        currentColors.remove("chat_wallpaper_gradient_to");
        currentColors.remove("key_chat_wallpaper_gradient_to2");
        currentColors.remove("key_chat_wallpaper_gradient_to3");
        currentColors.remove("chat_wallpaper_gradient_rotation");
        themedWallpaperLink = null;
        themeInfo.setOverrideWallpaper(null);
        if (bitmap != null) {
            themedWallpaper = new BitmapDrawable(bitmap);
            saveCurrentTheme(themeInfo, false, false, false);
            calcBackgroundColor(themedWallpaper, 0);
            applyChatServiceMessageColor();
            applyChatMessageSelectedBackgroundColor();
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didSetNewWallpapper, new Object[0]);
            return;
        }
        themedWallpaper = null;
        wallpaper = null;
        saveCurrentTheme(themeInfo, false, false, false);
        reloadWallpaper();
    }

    public static void setDrawableColor(Drawable drawable, int i) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof StatusDrawable) {
            ((StatusDrawable) drawable).setColor(i);
        } else if (drawable instanceof MsgClockDrawable) {
            ((MsgClockDrawable) drawable).setColor(i);
        } else if (drawable instanceof ShapeDrawable) {
            ((ShapeDrawable) drawable).getPaint().setColor(i);
        } else if (drawable instanceof ScamDrawable) {
            ((ScamDrawable) drawable).setColor(i);
        } else {
            drawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        }
    }

    public static void setDrawableColorByKey(Drawable drawable, String str) {
        if (str == null) {
            return;
        }
        setDrawableColor(drawable, getColor(str));
    }

    public static void setEmojiDrawableColor(Drawable drawable, int i, boolean z) {
        Drawable stateDrawable;
        if (drawable instanceof StateListDrawable) {
            try {
                if (z) {
                    stateDrawable = getStateDrawable(drawable, 0);
                } else {
                    stateDrawable = getStateDrawable(drawable, 1);
                }
                if (stateDrawable instanceof ShapeDrawable) {
                    ((ShapeDrawable) stateDrawable).getPaint().setColor(i);
                } else {
                    stateDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void setRippleDrawableForceSoftware(RippleDrawable rippleDrawable) {
        if (rippleDrawable == null) {
            return;
        }
        try {
            RippleDrawable.class.getDeclaredMethod("setForceSoftware", Boolean.TYPE).invoke(rippleDrawable, Boolean.TRUE);
        } catch (Throwable unused) {
        }
    }

    public static void setSelectorDrawableColor(Drawable drawable, int i, boolean z) {
        Drawable stateDrawable;
        if (drawable instanceof StateListDrawable) {
            try {
                if (z) {
                    Drawable stateDrawable2 = getStateDrawable(drawable, 0);
                    if (stateDrawable2 instanceof ShapeDrawable) {
                        ((ShapeDrawable) stateDrawable2).getPaint().setColor(i);
                    } else {
                        stateDrawable2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                    }
                    stateDrawable = getStateDrawable(drawable, 1);
                } else {
                    stateDrawable = getStateDrawable(drawable, 2);
                }
                if (stateDrawable instanceof ShapeDrawable) {
                    ((ShapeDrawable) stateDrawable).getPaint().setColor(i);
                } else {
                    stateDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                }
            } catch (Throwable unused) {
            }
        } else if (Build.VERSION.SDK_INT < 21 || !(drawable instanceof RippleDrawable)) {
        } else {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            if (z) {
                rippleDrawable.setColor(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}));
            } else if (rippleDrawable.getNumberOfLayers() > 0) {
                Drawable drawable2 = rippleDrawable.getDrawable(0);
                if (drawable2 instanceof ShapeDrawable) {
                    ((ShapeDrawable) drawable2).getPaint().setColor(i);
                } else {
                    drawable2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                }
            }
        }
    }

    public static boolean isThemeWallpaperPublic() {
        return !TextUtils.isEmpty(themedWallpaperLink);
    }

    public static boolean hasWallpaperFromTheme() {
        ThemeInfo themeInfo = currentTheme;
        if (themeInfo.firstAccentIsDefault && themeInfo.currentAccentId == DEFALT_THEME_ACCENT_ID) {
            return false;
        }
        return currentColors.containsKey("chat_wallpaper") || themedWallpaperFileOffset > 0 || !TextUtils.isEmpty(themedWallpaperLink);
    }

    public static boolean isCustomTheme() {
        return isCustomTheme;
    }

    public static void reloadWallpaper() {
        BackgroundGradientDrawable.Disposable disposable = backgroundGradientDisposable;
        if (disposable != null) {
            disposable.dispose();
            backgroundGradientDisposable = null;
        }
        Drawable drawable = wallpaper;
        if (drawable instanceof MotionBackgroundDrawable) {
            previousPhase = ((MotionBackgroundDrawable) drawable).getPhase();
        } else {
            previousPhase = 0;
        }
        wallpaper = null;
        themedWallpaper = null;
        loadWallpaper();
    }

    private static void calcBackgroundColor(Drawable drawable, int i) {
        if (i != 2) {
            int[] calcDrawableColor = AndroidUtilities.calcDrawableColor(drawable);
            int i2 = calcDrawableColor[0];
            serviceMessageColorBackup = i2;
            serviceMessageColor = i2;
            int i3 = calcDrawableColor[1];
            serviceSelectedMessageColorBackup = i3;
            serviceSelectedMessageColor = i3;
            serviceMessage2Color = calcDrawableColor[2];
            serviceSelectedMessage2Color = calcDrawableColor[3];
        }
    }

    public static int getServiceMessageColor() {
        Integer num = currentColors.get("chat_serviceBackground");
        return num == null ? serviceMessageColor : num.intValue();
    }

    public static void loadWallpaper() {
        final File file;
        final TLRPC$Document tLRPC$Document;
        final boolean z;
        float f;
        float f2;
        TLRPC$WallPaper tLRPC$WallPaper;
        if (wallpaper != null) {
            return;
        }
        ThemeInfo themeInfo = currentTheme;
        final boolean z2 = themeInfo.firstAccentIsDefault && themeInfo.currentAccentId == DEFALT_THEME_ACCENT_ID;
        ThemeAccent accent = themeInfo.getAccent(false);
        TLRPC$Document tLRPC$Document2 = null;
        if (accent != null) {
            File pathToWallpaper = accent.getPathToWallpaper();
            boolean z3 = accent.patternMotion;
            TLRPC$TL_theme tLRPC$TL_theme = accent.info;
            TLRPC$ThemeSettings tLRPC$ThemeSettings = (tLRPC$TL_theme == null || tLRPC$TL_theme.settings.size() <= 0) ? null : accent.info.settings.get(0);
            if (accent.info != null && tLRPC$ThemeSettings != null && (tLRPC$WallPaper = tLRPC$ThemeSettings.wallpaper) != null) {
                tLRPC$Document2 = tLRPC$WallPaper.document;
            }
            tLRPC$Document = tLRPC$Document2;
            file = pathToWallpaper;
            z = z3;
        } else {
            file = null;
            tLRPC$Document = null;
            z = false;
        }
        ThemeInfo themeInfo2 = currentTheme;
        final OverrideWallpaperInfo overrideWallpaperInfo = themeInfo2.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            f2 = overrideWallpaperInfo.intensity;
        } else if (accent != null) {
            f2 = accent.patternIntensity;
        } else {
            f = themeInfo2.patternIntensity;
            final int i = (int) f;
            DispatchQueue dispatchQueue = Utilities.themeQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    Theme.lambda$loadWallpaper$12(Theme.OverrideWallpaperInfo.this, file, i, z2, z, tLRPC$Document);
                }
            };
            wallpaperLoadTask = runnable;
            dispatchQueue.postRunnable(runnable);
        }
        f = f2 * 100.0f;
        final int i2 = (int) f;
        DispatchQueue dispatchQueue2 = Utilities.themeQueue;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Theme.lambda$loadWallpaper$12(Theme.OverrideWallpaperInfo.this, file, i2, z2, z, tLRPC$Document);
            }
        };
        wallpaperLoadTask = runnable2;
        dispatchQueue2.postRunnable(runnable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadWallpaper$12(OverrideWallpaperInfo overrideWallpaperInfo, File file, int i, boolean z, boolean z2, TLRPC$Document tLRPC$Document) {
        BackgroundDrawableSettings createBackgroundDrawable = createBackgroundDrawable(currentTheme, overrideWallpaperInfo, currentColors, file, themedWallpaperLink, themedWallpaperFileOffset, i, previousPhase, z, hasPreviousTheme, isApplyingAccent, z2, tLRPC$Document);
        Boolean bool = createBackgroundDrawable.isWallpaperMotion;
        isWallpaperMotion = bool != null ? bool.booleanValue() : isWallpaperMotion;
        Boolean bool2 = createBackgroundDrawable.isPatternWallpaper;
        isPatternWallpaper = bool2 != null ? bool2.booleanValue() : isPatternWallpaper;
        Boolean bool3 = createBackgroundDrawable.isCustomTheme;
        isCustomTheme = bool3 != null ? bool3.booleanValue() : isCustomTheme;
        final Drawable drawable = createBackgroundDrawable.wallpaper;
        wallpaper = drawable != null ? drawable : wallpaper;
        calcBackgroundColor(drawable, 1);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Theme.lambda$loadWallpaper$11(drawable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadWallpaper$11(Drawable drawable) {
        wallpaperLoadTask = null;
        createCommonChatResources();
        applyChatServiceMessageColor(null, null, drawable);
        applyChatMessageSelectedBackgroundColor(null, drawable);
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didSetNewWallpapper, new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.telegram.p048ui.ActionBar.Theme.BackgroundDrawableSettings createBackgroundDrawable(org.telegram.p048ui.ActionBar.Theme.ThemeInfo r13, java.util.HashMap<java.lang.String, java.lang.Integer> r14, java.lang.String r15, int r16) {
        /*
            r0 = r13
            boolean r1 = r0.firstAccentIsDefault
            r2 = 1
            r3 = 0
            if (r1 == 0) goto Lf
            int r1 = r0.currentAccentId
            int r4 = org.telegram.p048ui.ActionBar.Theme.DEFALT_THEME_ACCENT_ID
            if (r1 != r4) goto Lf
            r8 = r2
            goto L10
        Lf:
            r8 = r3
        L10:
            org.telegram.ui.ActionBar.Theme$ThemeAccent r1 = r13.getAccent(r3)
            if (r1 == 0) goto L1b
            java.io.File r4 = r1.getPathToWallpaper()
            goto L1c
        L1b:
            r4 = 0
        L1c:
            if (r1 == 0) goto L24
            boolean r5 = r1.patternMotion
            if (r5 == 0) goto L24
            r11 = r2
            goto L25
        L24:
            r11 = r3
        L25:
            org.telegram.ui.ActionBar.Theme$OverrideWallpaperInfo r2 = r0.overrideWallpaper
            r3 = 1120403456(0x42c80000, float:100.0)
            if (r2 == 0) goto L31
            float r1 = r2.intensity
        L2d:
            float r1 = r1 * r3
        L2e:
            int r1 = (int) r1
            r6 = r1
            goto L3a
        L31:
            if (r1 == 0) goto L36
            float r1 = r1.patternIntensity
            goto L2d
        L36:
            int r1 = r0.patternIntensity
            float r1 = (float) r1
            goto L2e
        L3a:
            java.util.HashMap<java.lang.String, java.lang.Integer> r1 = org.telegram.p048ui.ActionBar.Theme.currentColorsNoAccent
            java.lang.String r3 = "wallpaperFileOffset"
            java.lang.Object r1 = r1.get(r3)
            java.lang.Integer r1 = (java.lang.Integer) r1
            if (r1 == 0) goto L4b
            int r1 = r1.intValue()
            goto L4c
        L4b:
            r1 = -1
        L4c:
            r5 = r1
            r9 = 0
            r10 = 0
            r12 = 0
            r0 = r13
            r1 = r2
            r2 = r14
            r3 = r4
            r4 = r15
            r7 = r16
            org.telegram.ui.ActionBar.Theme$BackgroundDrawableSettings r0 = createBackgroundDrawable(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.createBackgroundDrawable(org.telegram.ui.ActionBar.Theme$ThemeInfo, java.util.HashMap, java.lang.String, int):org.telegram.ui.ActionBar.Theme$BackgroundDrawableSettings");
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x030f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.telegram.p048ui.ActionBar.Theme.BackgroundDrawableSettings createBackgroundDrawable(org.telegram.p048ui.ActionBar.Theme.ThemeInfo r24, org.telegram.p048ui.ActionBar.Theme.OverrideWallpaperInfo r25, java.util.HashMap<java.lang.String, java.lang.Integer> r26, java.io.File r27, java.lang.String r28, int r29, int r30, int r31, boolean r32, boolean r33, boolean r34, boolean r35, org.telegram.tgnet.TLRPC$Document r36) {
        /*
            Method dump skipped, instructions count: 896
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ActionBar.Theme.createBackgroundDrawable(org.telegram.ui.ActionBar.Theme$ThemeInfo, org.telegram.ui.ActionBar.Theme$OverrideWallpaperInfo, java.util.HashMap, java.io.File, java.lang.String, int, int, int, boolean, boolean, boolean, boolean, org.telegram.tgnet.TLRPC$Document):org.telegram.ui.ActionBar.Theme$BackgroundDrawableSettings");
    }

    public static Drawable createDefaultWallpaper() {
        return createDefaultWallpaper(0, 0);
    }

    public static Drawable createDefaultWallpaper(int i, int i2) {
        MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable(-2368069, -9722489, -2762611, -7817084, i != 0);
        if (i <= 0 || i2 <= 0) {
            Point point = AndroidUtilities.displaySize;
            i = Math.min(point.x, point.y);
            Point point2 = AndroidUtilities.displaySize;
            i2 = Math.max(point2.x, point2.y);
        }
        motionBackgroundDrawable.setPatternBitmap(34, SvgHelper.getBitmap(C3301R.C3306raw.default_pattern, i, i2, -16777216));
        motionBackgroundDrawable.setPatternColorFilter(motionBackgroundDrawable.getPatternColor());
        return motionBackgroundDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap loadScreenSizedBitmap(FileInputStream fileInputStream, int i) {
        float min;
        try {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = 1;
                options.inJustDecodeBounds = true;
                long j = i;
                fileInputStream.getChannel().position(j);
                BitmapFactory.decodeStream(fileInputStream, null, options);
                float f = options.outWidth;
                float f2 = options.outHeight;
                Point point = AndroidUtilities.displaySize;
                int min2 = Math.min(point.x, point.y);
                Point point2 = AndroidUtilities.displaySize;
                int max = Math.max(point2.x, point2.y);
                if (min2 >= max && f > f2) {
                    min = Math.max(f / min2, f2 / max);
                } else {
                    min = Math.min(f / min2, f2 / max);
                }
                if (min < 1.2f) {
                    min = 1.0f;
                }
                options.inJustDecodeBounds = false;
                if (min > 1.0f && (f > min2 || f2 > max)) {
                    int i2 = 1;
                    do {
                        i2 *= 2;
                    } while (i2 * 2 < min);
                    options.inSampleSize = i2;
                } else {
                    options.inSampleSize = (int) min;
                }
                fileInputStream.getChannel().position(j);
                Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream, null, options);
                if (decodeStream.getWidth() < min2 || decodeStream.getHeight() < max) {
                    float max2 = Math.max(min2 / decodeStream.getWidth(), max / decodeStream.getHeight());
                    if (max2 >= 1.02f) {
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeStream, (int) (decodeStream.getWidth() * max2), (int) (decodeStream.getHeight() * max2), true);
                        decodeStream.recycle();
                        try {
                            fileInputStream.close();
                        } catch (Exception unused) {
                        }
                        return createScaledBitmap;
                    }
                }
                try {
                    fileInputStream.close();
                } catch (Exception unused2) {
                }
                return decodeStream;
            } catch (Exception e) {
                FileLog.m45e(e);
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                return null;
            }
        } catch (Throwable th) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Exception unused4) {
                }
            }
            throw th;
        }
    }

    public static Drawable getThemedWallpaper(final boolean z, final View view) {
        int i;
        MotionBackgroundDrawable motionBackgroundDrawable;
        File file;
        FileInputStream fileInputStream;
        Bitmap decodeStream;
        MotionBackgroundDrawable motionBackgroundDrawable2;
        Integer num = currentColors.get("chat_wallpaper");
        int i2 = 1;
        if (num != null) {
            Integer num2 = currentColors.get("chat_wallpaper_gradient_to");
            Integer num3 = currentColors.get("key_chat_wallpaper_gradient_to2");
            Integer num4 = currentColors.get("key_chat_wallpaper_gradient_to3");
            Integer num5 = currentColors.get("chat_wallpaper_gradient_rotation");
            if (num5 == null) {
                num5 = 45;
            }
            if (num2 == null) {
                return new ColorDrawable(num.intValue());
            }
            ThemeAccent accent = currentTheme.getAccent(false);
            if (accent == null || TextUtils.isEmpty(accent.patternSlug) || previousTheme != null || (file = accent.getPathToWallpaper()) == null || !file.exists()) {
                file = null;
            }
            if (num3 != null) {
                motionBackgroundDrawable2 = new MotionBackgroundDrawable(num.intValue(), num2.intValue(), num3.intValue(), num4 != null ? num4.intValue() : 0, true);
                if (file == null) {
                    return motionBackgroundDrawable2;
                }
            } else if (file == null) {
                BackgroundGradientDrawable backgroundGradientDrawable = new BackgroundGradientDrawable(BackgroundGradientDrawable.getGradientOrientation(num5.intValue()), new int[]{num.intValue(), num2.intValue()});
                backgroundGradientDrawable.startDithering(!z ? BackgroundGradientDrawable.Sizes.ofDeviceScreen() : BackgroundGradientDrawable.Sizes.ofDeviceScreen(0.125f, BackgroundGradientDrawable.Sizes.Orientation.PORTRAIT), view != null ? new BackgroundGradientDrawable.ListenerAdapter() { // from class: org.telegram.ui.ActionBar.Theme.13
                    @Override // org.telegram.p048ui.Components.BackgroundGradientDrawable.ListenerAdapter, org.telegram.p048ui.Components.BackgroundGradientDrawable.Listener
                    public void onSizeReady(int i3, int i4) {
                        if (!z) {
                            Point point = AndroidUtilities.displaySize;
                            if ((point.x <= point.y) == (i3 <= i4)) {
                                view.invalidate();
                                return;
                            }
                            return;
                        }
                        view.invalidate();
                    }
                } : null);
                return backgroundGradientDrawable;
            } else {
                motionBackgroundDrawable2 = null;
            }
            motionBackgroundDrawable = motionBackgroundDrawable2;
            i = 0;
        } else {
            if (themedWallpaperFileOffset > 0) {
                ThemeInfo themeInfo = currentTheme;
                if (themeInfo.pathToFile != null || themeInfo.assetName != null) {
                    String str = themeInfo.assetName;
                    file = str != null ? getAssetFile(str) : new File(currentTheme.pathToFile);
                    i = themedWallpaperFileOffset;
                    motionBackgroundDrawable = null;
                }
            }
            i = 0;
            motionBackgroundDrawable = null;
            file = null;
        }
        try {
            if (file != null) {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.getChannel().position(i);
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        if (z) {
                            options.inJustDecodeBounds = true;
                            float f = options.outWidth;
                            float f2 = options.outHeight;
                            int m50dp = AndroidUtilities.m50dp(100);
                            while (true) {
                                float f3 = m50dp;
                                if (f <= f3 && f2 <= f3) {
                                    break;
                                }
                                i2 *= 2;
                                f /= 2.0f;
                                f2 /= 2.0f;
                            }
                        }
                        options.inJustDecodeBounds = false;
                        options.inSampleSize = i2;
                        decodeStream = BitmapFactory.decodeStream(fileInputStream, null, options);
                    } catch (Throwable th) {
                        th = th;
                        try {
                            FileLog.m45e(th);
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return null;
                        } catch (Throwable th2) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e) {
                                    FileLog.m45e(e);
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = null;
                }
                if (motionBackgroundDrawable != null) {
                    ThemeAccent accent2 = currentTheme.getAccent(false);
                    motionBackgroundDrawable.setPatternBitmap(accent2 != null ? (int) (accent2.patternIntensity * 100.0f) : 100, decodeStream);
                    motionBackgroundDrawable.setPatternColorFilter(motionBackgroundDrawable.getPatternColor());
                    try {
                        fileInputStream.close();
                    } catch (Exception e2) {
                        FileLog.m45e(e2);
                    }
                    return motionBackgroundDrawable;
                } else if (decodeStream != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(decodeStream);
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        FileLog.m45e(e3);
                    }
                    return bitmapDrawable;
                } else {
                    fileInputStream.close();
                }
            }
        } catch (Exception e4) {
            FileLog.m45e(e4);
        }
        return null;
    }

    public static String getSelectedBackgroundSlug() {
        OverrideWallpaperInfo overrideWallpaperInfo = currentTheme.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            return overrideWallpaperInfo.slug;
        }
        return hasWallpaperFromTheme() ? "t" : "d";
    }

    public static Drawable getCachedWallpaper() {
        Drawable cachedWallpaperNonBlocking = getCachedWallpaperNonBlocking();
        if (cachedWallpaperNonBlocking != null || wallpaperLoadTask == null) {
            return cachedWallpaperNonBlocking;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Utilities.themeQueue.postRunnable(new Theme$$ExternalSyntheticLambda2(countDownLatch));
        try {
            countDownLatch.await();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        return getCachedWallpaperNonBlocking();
    }

    public static Drawable getCachedWallpaperNonBlocking() {
        Drawable drawable = themedWallpaper;
        return drawable != null ? drawable : wallpaper;
    }

    public static boolean isWallpaperMotion() {
        return isWallpaperMotion;
    }

    public static boolean isPatternWallpaper() {
        String selectedBackgroundSlug = getSelectedBackgroundSlug();
        return isPatternWallpaper || "CJz3BZ6YGEYBAAAABboWp6SAv04".equals(selectedBackgroundSlug) || "qeZWES8rGVIEAAAARfWlK1lnfiI".equals(selectedBackgroundSlug);
    }

    public static BackgroundGradientDrawable getCurrentGradientWallpaper() {
        int i;
        int i2;
        OverrideWallpaperInfo overrideWallpaperInfo = currentTheme.overrideWallpaper;
        if (overrideWallpaperInfo == null || (i = overrideWallpaperInfo.color) == 0 || (i2 = overrideWallpaperInfo.gradientColor1) == 0) {
            return null;
        }
        return new BackgroundGradientDrawable(BackgroundGradientDrawable.getGradientOrientation(overrideWallpaperInfo.rotation), new int[]{i, i2});
    }

    public static AudioVisualizerDrawable getCurrentAudiVisualizerDrawable() {
        if (chat_msgAudioVisualizeDrawable == null) {
            chat_msgAudioVisualizeDrawable = new AudioVisualizerDrawable();
        }
        return chat_msgAudioVisualizeDrawable;
    }

    public static void unrefAudioVisualizeDrawable(final MessageObject messageObject) {
        AudioVisualizerDrawable audioVisualizerDrawable = chat_msgAudioVisualizeDrawable;
        if (audioVisualizerDrawable == null) {
            return;
        }
        if (audioVisualizerDrawable.getParentView() == null || messageObject == null) {
            chat_msgAudioVisualizeDrawable.setParentView(null);
            return;
        }
        if (animatedOutVisualizerDrawables == null) {
            animatedOutVisualizerDrawables = new HashMap<>();
        }
        animatedOutVisualizerDrawables.put(messageObject, chat_msgAudioVisualizeDrawable);
        chat_msgAudioVisualizeDrawable.setWaveform(false, true, null);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Theme.lambda$unrefAudioVisualizeDrawable$13(MessageObject.this);
            }
        }, 200L);
        chat_msgAudioVisualizeDrawable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$unrefAudioVisualizeDrawable$13(MessageObject messageObject) {
        AudioVisualizerDrawable remove = animatedOutVisualizerDrawables.remove(messageObject);
        if (remove != null) {
            remove.setParentView(null);
        }
    }

    public static AudioVisualizerDrawable getAnimatedOutAudioVisualizerDrawable(MessageObject messageObject) {
        HashMap<MessageObject, AudioVisualizerDrawable> hashMap = animatedOutVisualizerDrawables;
        if (hashMap == null || messageObject == null) {
            return null;
        }
        return hashMap.get(messageObject);
    }

    public static StatusDrawable getChatStatusDrawable(int i) {
        if (i < 0 || i > 5) {
            return null;
        }
        StatusDrawable[] statusDrawableArr = chat_status_drawables;
        StatusDrawable statusDrawable = statusDrawableArr[i];
        if (statusDrawable != null) {
            return statusDrawable;
        }
        if (i == 0) {
            statusDrawableArr[0] = new TypingDotsDrawable(true);
        } else if (i == 1) {
            statusDrawableArr[1] = new RecordStatusDrawable(true);
        } else if (i == 2) {
            statusDrawableArr[2] = new SendingFileDrawable(true);
        } else if (i == 3) {
            statusDrawableArr[3] = new PlayingGameDrawable(true, null);
        } else if (i == 4) {
            statusDrawableArr[4] = new RoundStatusDrawable(true);
        } else if (i == 5) {
            statusDrawableArr[5] = new ChoosingStickerStatusDrawable(true);
        }
        StatusDrawable statusDrawable2 = chat_status_drawables[i];
        statusDrawable2.start();
        statusDrawable2.setColor(getColor("chats_actionMessage"));
        return statusDrawable2;
    }

    public static FragmentContextViewWavesDrawable getFragmentContextViewWavesDrawable() {
        if (fragmentContextViewWavesDrawable == null) {
            fragmentContextViewWavesDrawable = new FragmentContextViewWavesDrawable();
        }
        return fragmentContextViewWavesDrawable;
    }

    public static RoundVideoProgressShadow getRadialSeekbarShadowDrawable() {
        if (roundPlayDrawable == null) {
            roundPlayDrawable = new RoundVideoProgressShadow();
        }
        return roundPlayDrawable;
    }

    public static HashMap<String, String> getFallbackKeys() {
        return fallbackKeys;
    }

    public static String getFallbackKey(String str) {
        return fallbackKeys.get(str);
    }

    public static Map<String, Drawable> getThemeDrawablesMap() {
        return defaultChatDrawables;
    }

    public static Drawable getThemeDrawable(String str) {
        return defaultChatDrawables.get(str);
    }

    public static String getThemeDrawableColorKey(String str) {
        return defaultChatDrawableColorKeys.get(str);
    }

    public static Map<String, Paint> getThemePaintsMap() {
        return defaultChatPaints;
    }

    public static Paint getThemePaint(String str) {
        return defaultChatPaints.get(str);
    }

    public static String getThemePaintColorKey(String str) {
        return defaultChatPaintColors.get(str);
    }

    private static void addChatDrawable(String str, Drawable drawable, String str2) {
        defaultChatDrawables.put(str, drawable);
        if (str2 != null) {
            defaultChatDrawableColorKeys.put(str, str2);
        }
    }

    private static void addChatPaint(String str, Paint paint, String str2) {
        defaultChatPaints.put(str, paint);
        if (str2 != null) {
            defaultChatPaintColors.put(str, str2);
        }
    }

    public static boolean isCurrentThemeDay() {
        return !getActiveTheme().isDark();
    }

    public static boolean isHome(ThemeAccent themeAccent) {
        ThemeInfo themeInfo = themeAccent.parentTheme;
        if (themeInfo != null) {
            if (themeInfo.getKey().equals("Blue") && themeAccent.f1656id == 99) {
                return true;
            }
            if (themeAccent.parentTheme.getKey().equals("Day") && themeAccent.f1656id == 9) {
                return true;
            }
            return (themeAccent.parentTheme.getKey().equals("Night") || themeAccent.parentTheme.getKey().equals("Dark Blue")) && themeAccent.f1656id == 0;
        }
        return false;
    }

    public static void turnOffAutoNight(final BaseFragment baseFragment) {
        turnOffAutoNight(baseFragment != null ? baseFragment.getLayoutContainer() : null, new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                Theme.lambda$turnOffAutoNight$14(BaseFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$turnOffAutoNight$14(BaseFragment baseFragment) {
        INavigationLayout parentLayout = baseFragment != null ? baseFragment.getParentLayout() : null;
        if (parentLayout != null) {
            parentLayout.presentFragment(new ThemeActivity(1));
        }
    }

    public static void turnOffAutoNight(FrameLayout frameLayout, Runnable runnable) {
        String string;
        if (selectedAutoNightType != 0) {
            if (frameLayout != null && runnable != null) {
                try {
                    BulletinFactory m28of = BulletinFactory.m28of(frameLayout, null);
                    int i = C3301R.C3306raw.auto_night_off;
                    if (selectedAutoNightType == 3) {
                        string = LocaleController.getString("AutoNightSystemModeOff", C3301R.string.AutoNightSystemModeOff);
                    } else {
                        string = LocaleController.getString("AutoNightModeOff", C3301R.string.AutoNightModeOff);
                    }
                    m28of.createSimpleBulletin(i, string, LocaleController.getString("Settings", C3301R.string.Settings), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS, runnable).show();
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            selectedAutoNightType = 0;
            saveAutoNightThemeConfig();
            cancelAutoNightThemeCallbacks();
        }
    }
}
