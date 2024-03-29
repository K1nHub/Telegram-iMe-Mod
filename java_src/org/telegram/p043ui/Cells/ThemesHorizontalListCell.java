package org.telegram.p043ui.Cells;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.EmojiThemes;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeColors;
import org.telegram.p043ui.Cells.ThemesHorizontalListCell;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.MotionBackgroundDrawable;
import org.telegram.p043ui.Components.RadioButton;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.ThemeSetUrlActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_account_getWallPaper;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputWallPaperSlug;
import org.telegram.tgnet.TLRPC$TL_theme;
import org.telegram.tgnet.TLRPC$TL_wallPaper;
import org.telegram.tgnet.TLRPC$WallPaper;
/* renamed from: org.telegram.ui.Cells.ThemesHorizontalListCell */
/* loaded from: classes5.dex */
public class ThemesHorizontalListCell extends RecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    public static byte[] bytes = new byte[1024];
    private ThemesListAdapter adapter;
    private int currentType;
    private ArrayList<Theme.ThemeInfo> customThemes;
    private ArrayList<Theme.ThemeInfo> defaultThemes;
    private boolean drawDivider;
    private BaseFragment fragment;
    private LinearLayoutManager horizontalLayoutManager;
    private HashMap<String, Theme.ThemeInfo> loadingThemes;
    private HashMap<Theme.ThemeInfo, String> loadingWallpapers;
    private int prevCount;
    private Theme.ThemeInfo prevThemeInfo;

    protected void showOptionsForTheme(Theme.ThemeInfo themeInfo) {
    }

    protected void updateRows() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.ThemesHorizontalListCell$ThemesListAdapter */
    /* loaded from: classes5.dex */
    public class ThemesListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        ThemesListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerListView.Holder(new InnerThemeView(this.mContext));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ArrayList arrayList;
            int size;
            InnerThemeView innerThemeView = (InnerThemeView) viewHolder.itemView;
            if (i < ThemesHorizontalListCell.this.defaultThemes.size()) {
                arrayList = ThemesHorizontalListCell.this.defaultThemes;
                size = i;
            } else {
                arrayList = ThemesHorizontalListCell.this.customThemes;
                size = i - ThemesHorizontalListCell.this.defaultThemes.size();
            }
            innerThemeView.setTheme((Theme.ThemeInfo) arrayList.get(size), i == getItemCount() - 1, i == 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            ThemesHorizontalListCell themesHorizontalListCell = ThemesHorizontalListCell.this;
            return themesHorizontalListCell.prevCount = themesHorizontalListCell.defaultThemes.size() + ThemesHorizontalListCell.this.customThemes.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.ThemesHorizontalListCell$InnerThemeView */
    /* loaded from: classes5.dex */
    public class InnerThemeView extends FrameLayout {
        private ObjectAnimator accentAnimator;
        private boolean accentColorChanged;
        private int accentId;
        private float accentState;
        private int backColor;
        private Drawable backgroundDrawable;
        private Paint bitmapPaint;
        private BitmapShader bitmapShader;
        private RadioButton button;
        private int checkColor;
        private final ArgbEvaluator evaluator;
        private boolean hasWhiteBackground;
        private int inColor;
        private Drawable inDrawable;
        private boolean isFirst;
        private boolean isLast;
        private long lastDrawTime;
        private int loadingColor;
        private Drawable loadingDrawable;
        private int oldBackColor;
        private int oldCheckColor;
        private int oldInColor;
        private int oldOutColor;
        private Drawable optionsDrawable;
        private int outColor;
        private Drawable outDrawable;
        private Paint paint;
        private float placeholderAlpha;
        private boolean pressed;
        private RectF rect;
        private Matrix shaderMatrix;
        private TextPaint textPaint;
        private Theme.ThemeInfo themeInfo;

        public InnerThemeView(Context context) {
            super(context);
            this.rect = new RectF();
            this.paint = new Paint(1);
            this.textPaint = new TextPaint(1);
            this.evaluator = new ArgbEvaluator();
            this.bitmapPaint = new Paint(3);
            this.shaderMatrix = new Matrix();
            setWillNotDraw(false);
            this.inDrawable = context.getResources().getDrawable(C3632R.C3634drawable.minibubble_in).mutate();
            this.outDrawable = context.getResources().getDrawable(C3632R.C3634drawable.minibubble_out).mutate();
            this.textPaint.setTextSize(AndroidUtilities.m107dp(13));
            RadioButton radioButton = new RadioButton(context);
            this.button = radioButton;
            radioButton.setSize(AndroidUtilities.m107dp(20));
            addView(this.button, LayoutHelper.createFrame(22, 22, 51, 27, 75, 0, 0));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp((this.isLast ? 22 : 15) + 76 + (this.isFirst ? 22 : 0)), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(148), 1073741824));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            Theme.ThemeInfo themeInfo;
            if (this.optionsDrawable == null || (themeInfo = this.themeInfo) == null || ((themeInfo.info != null && !themeInfo.themeLoaded) || ThemesHorizontalListCell.this.currentType != 0)) {
                return super.onTouchEvent(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 0 || action == 1) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (x > this.rect.centerX() && y < this.rect.centerY() - AndroidUtilities.m107dp(10)) {
                    if (action == 0) {
                        this.pressed = true;
                    } else {
                        performHapticFeedback(3);
                        ThemesHorizontalListCell.this.showOptionsForTheme(this.themeInfo);
                    }
                }
                if (action == 1) {
                    this.pressed = false;
                }
            }
            return this.pressed;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean parseTheme() {
            int stringKeyToInt;
            int intValue;
            String substring;
            String[] split;
            Theme.ThemeInfo themeInfo = this.themeInfo;
            if (themeInfo == null || themeInfo.pathToFile == null) {
                return false;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(new File(this.themeInfo.pathToFile));
                int i = 0;
                boolean z = false;
                while (true) {
                    int read = fileInputStream.read(ThemesHorizontalListCell.bytes);
                    if (read == -1) {
                        break;
                    }
                    int i2 = i;
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        if (i3 >= read) {
                            break;
                        }
                        byte[] bArr = ThemesHorizontalListCell.bytes;
                        if (bArr[i3] == 10) {
                            int i5 = (i3 - i4) + 1;
                            String str = new String(bArr, i4, i5 - 1, "UTF-8");
                            if (str.startsWith("WLS=")) {
                                Uri parse = Uri.parse(str.substring(4));
                                this.themeInfo.slug = parse.getQueryParameter("slug");
                                this.themeInfo.pathToWallpaper = new File(ApplicationLoader.getFilesDirFixed(), Utilities.MD5(substring) + ".wp").getAbsolutePath();
                                String queryParameter = parse.getQueryParameter("mode");
                                if (queryParameter != null && (split = queryParameter.toLowerCase().split(" ")) != null && split.length > 0) {
                                    int i6 = 0;
                                    while (true) {
                                        if (i6 >= split.length) {
                                            break;
                                        } else if ("blur".equals(split[i6])) {
                                            this.themeInfo.isBlured = true;
                                            break;
                                        } else {
                                            i6++;
                                        }
                                    }
                                }
                                if (!TextUtils.isEmpty(parse.getQueryParameter("pattern"))) {
                                    try {
                                        String queryParameter2 = parse.getQueryParameter("bg_color");
                                        if (!TextUtils.isEmpty(queryParameter2)) {
                                            this.themeInfo.patternBgColor = Integer.parseInt(queryParameter2.substring(0, 6), 16) | (-16777216);
                                            if (queryParameter2.length() >= 13 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(6))) {
                                                this.themeInfo.patternBgGradientColor1 = Integer.parseInt(queryParameter2.substring(7, 13), 16) | (-16777216);
                                            }
                                            if (queryParameter2.length() >= 20 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(13))) {
                                                this.themeInfo.patternBgGradientColor2 = Integer.parseInt(queryParameter2.substring(14, 20), 16) | (-16777216);
                                            }
                                            if (queryParameter2.length() == 27 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(20))) {
                                                this.themeInfo.patternBgGradientColor3 = Integer.parseInt(queryParameter2.substring(21), 16) | (-16777216);
                                            }
                                        }
                                    } catch (Exception unused) {
                                    }
                                    try {
                                        String queryParameter3 = parse.getQueryParameter("rotation");
                                        if (!TextUtils.isEmpty(queryParameter3)) {
                                            this.themeInfo.patternBgGradientRotation = Utilities.parseInt((CharSequence) queryParameter3).intValue();
                                        }
                                    } catch (Exception unused2) {
                                    }
                                    String queryParameter4 = parse.getQueryParameter("intensity");
                                    if (!TextUtils.isEmpty(queryParameter4)) {
                                        this.themeInfo.patternIntensity = Utilities.parseInt((CharSequence) queryParameter4).intValue();
                                    }
                                    Theme.ThemeInfo themeInfo2 = this.themeInfo;
                                    if (themeInfo2.patternIntensity == 0) {
                                        themeInfo2.patternIntensity = 50;
                                    }
                                }
                            } else if (str.startsWith("WPS")) {
                                this.themeInfo.previewWallpaperOffset = i5 + i2;
                                z = true;
                                break;
                            } else {
                                int indexOf = str.indexOf(61);
                                if (indexOf != -1 && ((stringKeyToInt = ThemeColors.stringKeyToInt(str.substring(0, indexOf))) == Theme.key_chat_inBubble || stringKeyToInt == Theme.key_chat_outBubble || stringKeyToInt == Theme.key_chat_wallpaper || stringKeyToInt == Theme.key_chat_wallpaper_gradient_to1 || stringKeyToInt == Theme.key_chat_wallpaper_gradient_to2 || stringKeyToInt == Theme.key_chat_wallpaper_gradient_to3)) {
                                    String substring2 = str.substring(indexOf + 1);
                                    if (substring2.length() > 0 && substring2.charAt(0) == '#') {
                                        try {
                                            intValue = Color.parseColor(substring2);
                                        } catch (Exception unused3) {
                                            intValue = Utilities.parseInt((CharSequence) substring2).intValue();
                                        }
                                    } else {
                                        intValue = Utilities.parseInt((CharSequence) substring2).intValue();
                                    }
                                    if (stringKeyToInt == Theme.key_chat_inBubble) {
                                        this.themeInfo.setPreviewInColor(intValue);
                                    } else if (stringKeyToInt == Theme.key_chat_outBubble) {
                                        this.themeInfo.setPreviewOutColor(intValue);
                                    } else if (stringKeyToInt == Theme.key_chat_wallpaper) {
                                        this.themeInfo.setPreviewBackgroundColor(intValue);
                                    } else if (stringKeyToInt == Theme.key_chat_wallpaper_gradient_to1) {
                                        this.themeInfo.previewBackgroundGradientColor1 = intValue;
                                    } else if (stringKeyToInt == Theme.key_chat_wallpaper_gradient_to2) {
                                        this.themeInfo.previewBackgroundGradientColor2 = intValue;
                                    } else if (stringKeyToInt == Theme.key_chat_wallpaper_gradient_to3) {
                                        this.themeInfo.previewBackgroundGradientColor3 = intValue;
                                    }
                                }
                            }
                            i4 += i5;
                            i2 += i5;
                        }
                        i3++;
                    }
                    if (z || i == i2) {
                        break;
                    }
                    fileInputStream.getChannel().position(i2);
                    i = i2;
                }
                fileInputStream.close();
            } catch (Throwable th) {
                FileLog.m102e(th);
            }
            Theme.ThemeInfo themeInfo3 = this.themeInfo;
            if (themeInfo3.pathToWallpaper != null && !themeInfo3.badWallpaper && !new File(this.themeInfo.pathToWallpaper).exists()) {
                if (ThemesHorizontalListCell.this.loadingWallpapers.containsKey(this.themeInfo)) {
                    return false;
                }
                HashMap hashMap = ThemesHorizontalListCell.this.loadingWallpapers;
                Theme.ThemeInfo themeInfo4 = this.themeInfo;
                hashMap.put(themeInfo4, themeInfo4.slug);
                TLRPC$TL_account_getWallPaper tLRPC$TL_account_getWallPaper = new TLRPC$TL_account_getWallPaper();
                TLRPC$TL_inputWallPaperSlug tLRPC$TL_inputWallPaperSlug = new TLRPC$TL_inputWallPaperSlug();
                Theme.ThemeInfo themeInfo5 = this.themeInfo;
                tLRPC$TL_inputWallPaperSlug.slug = themeInfo5.slug;
                tLRPC$TL_account_getWallPaper.wallpaper = tLRPC$TL_inputWallPaperSlug;
                ConnectionsManager.getInstance(themeInfo5.account).sendRequest(tLRPC$TL_account_getWallPaper, new RequestDelegate() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$InnerThemeView$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        ThemesHorizontalListCell.InnerThemeView.this.lambda$parseTheme$1(tLObject, tLRPC$TL_error);
                    }
                });
                return false;
            }
            this.themeInfo.previewParsed = true;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$parseTheme$1(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$InnerThemeView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ThemesHorizontalListCell.InnerThemeView.this.lambda$parseTheme$0(tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$parseTheme$0(TLObject tLObject) {
            if (tLObject instanceof TLRPC$TL_wallPaper) {
                TLRPC$WallPaper tLRPC$WallPaper = (TLRPC$WallPaper) tLObject;
                String attachFileName = FileLoader.getAttachFileName(tLRPC$WallPaper.document);
                if (ThemesHorizontalListCell.this.loadingThemes.containsKey(attachFileName)) {
                    return;
                }
                ThemesHorizontalListCell.this.loadingThemes.put(attachFileName, this.themeInfo);
                FileLoader.getInstance(this.themeInfo.account).loadFile(tLRPC$WallPaper.document, tLRPC$WallPaper, 1, 1);
                return;
            }
            this.themeInfo.badWallpaper = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void applyTheme() {
            this.inDrawable.setColorFilter(new PorterDuffColorFilter(this.themeInfo.getPreviewInColor(), PorterDuff.Mode.MULTIPLY));
            this.outDrawable.setColorFilter(new PorterDuffColorFilter(this.themeInfo.getPreviewOutColor(), PorterDuff.Mode.MULTIPLY));
            double[] dArr = null;
            if (this.themeInfo.pathToFile == null) {
                updateColors(false);
                this.optionsDrawable = null;
            } else {
                this.optionsDrawable = getResources().getDrawable(C3632R.C3634drawable.preview_dots).mutate();
                int previewBackgroundColor = this.themeInfo.getPreviewBackgroundColor();
                this.backColor = previewBackgroundColor;
                this.oldBackColor = previewBackgroundColor;
            }
            this.bitmapShader = null;
            this.backgroundDrawable = null;
            Theme.ThemeInfo themeInfo = this.themeInfo;
            int i = themeInfo.previewBackgroundGradientColor1;
            if (i != 0 && themeInfo.previewBackgroundGradientColor2 != 0) {
                int previewBackgroundColor2 = this.themeInfo.getPreviewBackgroundColor();
                Theme.ThemeInfo themeInfo2 = this.themeInfo;
                MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable(previewBackgroundColor2, themeInfo2.previewBackgroundGradientColor1, themeInfo2.previewBackgroundGradientColor2, themeInfo2.previewBackgroundGradientColor3, true);
                motionBackgroundDrawable.setRoundRadius(AndroidUtilities.m107dp(6));
                this.backgroundDrawable = motionBackgroundDrawable;
                dArr = AndroidUtilities.rgbToHsv(Color.red(this.themeInfo.getPreviewBackgroundColor()), Color.green(this.themeInfo.getPreviewBackgroundColor()), Color.blue(this.themeInfo.getPreviewBackgroundColor()));
            } else if (i != 0) {
                GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BL_TR, new int[]{this.themeInfo.getPreviewBackgroundColor(), this.themeInfo.previewBackgroundGradientColor1});
                gradientDrawable.setCornerRadius(AndroidUtilities.m107dp(6));
                this.backgroundDrawable = gradientDrawable;
                dArr = AndroidUtilities.rgbToHsv(Color.red(this.themeInfo.getPreviewBackgroundColor()), Color.green(this.themeInfo.getPreviewBackgroundColor()), Color.blue(this.themeInfo.getPreviewBackgroundColor()));
            } else if (themeInfo.previewWallpaperOffset > 0 || themeInfo.pathToWallpaper != null) {
                Theme.ThemeInfo themeInfo3 = this.themeInfo;
                Bitmap scaledBitmap = AndroidUtilities.getScaledBitmap(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(97), themeInfo3.pathToWallpaper, themeInfo3.pathToFile, themeInfo3.previewWallpaperOffset);
                if (scaledBitmap != null) {
                    this.backgroundDrawable = new BitmapDrawable(scaledBitmap);
                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                    BitmapShader bitmapShader = new BitmapShader(scaledBitmap, tileMode, tileMode);
                    this.bitmapShader = bitmapShader;
                    this.bitmapPaint.setShader(bitmapShader);
                    int[] calcDrawableColor = AndroidUtilities.calcDrawableColor(this.backgroundDrawable);
                    dArr = AndroidUtilities.rgbToHsv(Color.red(calcDrawableColor[0]), Color.green(calcDrawableColor[0]), Color.blue(calcDrawableColor[0]));
                }
            } else if (themeInfo.getPreviewBackgroundColor() != 0) {
                dArr = AndroidUtilities.rgbToHsv(Color.red(this.themeInfo.getPreviewBackgroundColor()), Color.green(this.themeInfo.getPreviewBackgroundColor()), Color.blue(this.themeInfo.getPreviewBackgroundColor()));
            }
            if (dArr != null && dArr[1] <= 0.10000000149011612d && dArr[2] >= 0.9599999785423279d) {
                this.hasWhiteBackground = true;
            } else {
                this.hasWhiteBackground = false;
            }
            if (this.themeInfo.getPreviewBackgroundColor() == 0 && this.themeInfo.previewParsed && this.backgroundDrawable == null) {
                Drawable createDefaultWallpaper = Theme.createDefaultWallpaper(100, 200);
                this.backgroundDrawable = createDefaultWallpaper;
                if (createDefaultWallpaper instanceof MotionBackgroundDrawable) {
                    ((MotionBackgroundDrawable) createDefaultWallpaper).setRoundRadius(AndroidUtilities.m107dp(6));
                }
            }
            invalidate();
        }

        public void setTheme(Theme.ThemeInfo themeInfo, boolean z, boolean z2) {
            Theme.ThemeInfo themeInfo2;
            TLRPC$TL_theme tLRPC$TL_theme;
            this.themeInfo = themeInfo;
            this.isFirst = z2;
            this.isLast = z;
            this.accentId = themeInfo.currentAccentId;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.button.getLayoutParams();
            layoutParams.leftMargin = AndroidUtilities.m107dp(this.isFirst ? 49 : 27);
            this.button.setLayoutParams(layoutParams);
            this.placeholderAlpha = BitmapDescriptorFactory.HUE_RED;
            Theme.ThemeInfo themeInfo3 = this.themeInfo;
            if (themeInfo3.pathToFile != null && !themeInfo3.previewParsed) {
                themeInfo3.setPreviewInColor(Theme.getDefaultColor(Theme.key_chat_inBubble));
                this.themeInfo.setPreviewOutColor(Theme.getDefaultColor(Theme.key_chat_outBubble));
                boolean exists = new File(this.themeInfo.pathToFile).exists();
                if ((!(exists && parseTheme()) || !exists) && (tLRPC$TL_theme = (themeInfo2 = this.themeInfo).info) != null) {
                    if (tLRPC$TL_theme.document != null) {
                        themeInfo2.themeLoaded = false;
                        this.placeholderAlpha = 1.0f;
                        Drawable mutate = getResources().getDrawable(C3632R.C3634drawable.msg_theme).mutate();
                        this.loadingDrawable = mutate;
                        int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7);
                        this.loadingColor = color;
                        Theme.setDrawableColor(mutate, color);
                        if (!exists) {
                            String attachFileName = FileLoader.getAttachFileName(this.themeInfo.info.document);
                            if (!ThemesHorizontalListCell.this.loadingThemes.containsKey(attachFileName)) {
                                ThemesHorizontalListCell.this.loadingThemes.put(attachFileName, this.themeInfo);
                                FileLoader fileLoader = FileLoader.getInstance(this.themeInfo.account);
                                TLRPC$TL_theme tLRPC$TL_theme2 = this.themeInfo.info;
                                fileLoader.loadFile(tLRPC$TL_theme2.document, tLRPC$TL_theme2, 1, 1);
                            }
                        }
                    } else {
                        Drawable mutate2 = getResources().getDrawable(C3632R.C3634drawable.preview_custom).mutate();
                        this.loadingDrawable = mutate2;
                        int color2 = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7);
                        this.loadingColor = color2;
                        Theme.setDrawableColor(mutate2, color2);
                    }
                }
            }
            applyTheme();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            TLRPC$TL_theme tLRPC$TL_theme;
            super.onAttachedToWindow();
            this.button.setChecked(this.themeInfo == (ThemesHorizontalListCell.this.currentType == 1 ? Theme.getCurrentNightTheme() : Theme.getCurrentTheme()), false);
            Theme.ThemeInfo themeInfo = this.themeInfo;
            if (themeInfo == null || (tLRPC$TL_theme = themeInfo.info) == null || themeInfo.themeLoaded) {
                return;
            }
            if (ThemesHorizontalListCell.this.loadingThemes.containsKey(FileLoader.getAttachFileName(tLRPC$TL_theme.document)) || ThemesHorizontalListCell.this.loadingWallpapers.containsKey(this.themeInfo)) {
                return;
            }
            this.themeInfo.themeLoaded = true;
            this.placeholderAlpha = BitmapDescriptorFactory.HUE_RED;
            parseTheme();
            applyTheme();
        }

        public void updateCurrentThemeCheck() {
            this.button.setChecked(this.themeInfo == (ThemesHorizontalListCell.this.currentType == 1 ? Theme.getCurrentNightTheme() : Theme.getCurrentTheme()), true);
        }

        void updateColors(boolean z) {
            int i;
            int i2;
            this.oldInColor = this.inColor;
            this.oldOutColor = this.outColor;
            this.oldBackColor = this.backColor;
            this.oldCheckColor = this.checkColor;
            int i3 = 0;
            Theme.ThemeAccent accent = this.themeInfo.getAccent(false);
            if (accent != null) {
                i3 = accent.accentColor;
                i2 = accent.myMessagesAccentColor;
                if (i2 == 0) {
                    i2 = i3;
                }
                i = (int) accent.backgroundOverrideColor;
                if (i == 0) {
                    i = i3;
                }
            } else {
                i = 0;
                i2 = 0;
            }
            Theme.ThemeInfo themeInfo = this.themeInfo;
            this.inColor = Theme.changeColorAccent(themeInfo, i3, themeInfo.getPreviewInColor());
            Theme.ThemeInfo themeInfo2 = this.themeInfo;
            this.outColor = Theme.changeColorAccent(themeInfo2, i2, themeInfo2.getPreviewOutColor());
            Theme.ThemeInfo themeInfo3 = this.themeInfo;
            this.backColor = Theme.changeColorAccent(themeInfo3, i, themeInfo3.getPreviewBackgroundColor());
            this.checkColor = this.outColor;
            this.accentId = this.themeInfo.currentAccentId;
            ObjectAnimator objectAnimator = this.accentAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            if (z) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "accentState", BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.accentAnimator = ofFloat;
                ofFloat.setDuration(200L);
                this.accentAnimator.start();
                return;
            }
            setAccentState(1.0f);
        }

        @Keep
        public float getAccentState() {
            return this.accentState;
        }

        @Keep
        public void setAccentState(float f) {
            this.accentState = f;
            this.accentColorChanged = true;
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int m107dp;
            boolean z = true;
            if (this.accentId != this.themeInfo.currentAccentId) {
                updateColors(true);
            }
            int m107dp2 = this.isFirst ? AndroidUtilities.m107dp(22) : 0;
            float f = m107dp2;
            float m107dp3 = AndroidUtilities.m107dp(11);
            this.rect.set(f, m107dp3, AndroidUtilities.m107dp(76) + m107dp2, m107dp + AndroidUtilities.m107dp(97));
            String charSequence = TextUtils.ellipsize(getThemeName(), this.textPaint, (getMeasuredWidth() - AndroidUtilities.m107dp(this.isFirst ? 10 : 15)) - (this.isLast ? AndroidUtilities.m107dp(7) : 0), TextUtils.TruncateAt.END).toString();
            int ceil = (int) Math.ceil(this.textPaint.measureText(charSequence));
            this.textPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            canvas.drawText(charSequence, ((AndroidUtilities.m107dp(76) - ceil) / 2) + m107dp2, AndroidUtilities.m107dp(131), this.textPaint);
            Theme.ThemeInfo themeInfo = this.themeInfo;
            TLRPC$TL_theme tLRPC$TL_theme = themeInfo.info;
            if (tLRPC$TL_theme != null && (tLRPC$TL_theme.document == null || !themeInfo.themeLoaded)) {
                z = false;
            }
            if (z) {
                this.paint.setColor(blend(this.oldBackColor, this.backColor));
                if (this.accentColorChanged) {
                    this.inDrawable.setColorFilter(new PorterDuffColorFilter(blend(this.oldInColor, this.inColor), PorterDuff.Mode.MULTIPLY));
                    this.outDrawable.setColorFilter(new PorterDuffColorFilter(blend(this.oldOutColor, this.outColor), PorterDuff.Mode.MULTIPLY));
                    this.accentColorChanged = false;
                }
                Drawable drawable = this.backgroundDrawable;
                if (drawable != null) {
                    if (this.bitmapShader != null) {
                        BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                        float width = bitmapDrawable.getBitmap().getWidth();
                        float height = bitmapDrawable.getBitmap().getHeight();
                        float width2 = width / this.rect.width();
                        float height2 = height / this.rect.height();
                        this.shaderMatrix.reset();
                        float min = 1.0f / Math.min(width2, height2);
                        float f2 = width / height2;
                        if (f2 > this.rect.width()) {
                            this.shaderMatrix.setTranslate(f - ((f2 - this.rect.width()) / 2.0f), m107dp3);
                        } else {
                            this.shaderMatrix.setTranslate(f, m107dp3 - (((height / width2) - this.rect.height()) / 2.0f));
                        }
                        this.shaderMatrix.preScale(min, min);
                        this.bitmapShader.setLocalMatrix(this.shaderMatrix);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.bitmapPaint);
                    } else {
                        RectF rectF = this.rect;
                        drawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                        this.backgroundDrawable.draw(canvas);
                    }
                } else {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.paint);
                }
                this.button.setColor(1728053247, -1);
                Theme.ThemeInfo themeInfo2 = this.themeInfo;
                if (themeInfo2.accentBaseColor != 0) {
                    if ("Day".equals(themeInfo2.name) || "Arctic Blue".equals(this.themeInfo.name)) {
                        this.button.setColor(-5000269, blend(this.oldCheckColor, this.checkColor));
                        Theme.chat_instantViewRectPaint.setColor(733001146);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), Theme.chat_instantViewRectPaint);
                    }
                } else if (this.hasWhiteBackground) {
                    this.button.setColor(-5000269, themeInfo2.getPreviewOutColor());
                    Theme.chat_instantViewRectPaint.setColor(733001146);
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), Theme.chat_instantViewRectPaint);
                }
                this.inDrawable.setBounds(AndroidUtilities.m107dp(6) + m107dp2, AndroidUtilities.m107dp(22), AndroidUtilities.m107dp(49) + m107dp2, AndroidUtilities.m107dp(36));
                this.inDrawable.draw(canvas);
                this.outDrawable.setBounds(AndroidUtilities.m107dp(27) + m107dp2, AndroidUtilities.m107dp(41), m107dp2 + AndroidUtilities.m107dp(70), AndroidUtilities.m107dp(55));
                this.outDrawable.draw(canvas);
                if (this.optionsDrawable != null && ThemesHorizontalListCell.this.currentType == 0) {
                    int m107dp4 = ((int) this.rect.right) - AndroidUtilities.m107dp(16);
                    int m107dp5 = ((int) this.rect.top) + AndroidUtilities.m107dp(6);
                    Drawable drawable2 = this.optionsDrawable;
                    drawable2.setBounds(m107dp4, m107dp5, drawable2.getIntrinsicWidth() + m107dp4, this.optionsDrawable.getIntrinsicHeight() + m107dp5);
                    this.optionsDrawable.draw(canvas);
                }
            }
            Theme.ThemeInfo themeInfo3 = this.themeInfo;
            TLRPC$TL_theme tLRPC$TL_theme2 = themeInfo3.info;
            if (tLRPC$TL_theme2 != null && tLRPC$TL_theme2.document == null) {
                this.button.setAlpha(BitmapDescriptorFactory.HUE_RED);
                Theme.chat_instantViewRectPaint.setColor(733001146);
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), Theme.chat_instantViewRectPaint);
                if (this.loadingDrawable != null) {
                    int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7);
                    if (this.loadingColor != color) {
                        Drawable drawable3 = this.loadingDrawable;
                        this.loadingColor = color;
                        Theme.setDrawableColor(drawable3, color);
                    }
                    int centerX = (int) (this.rect.centerX() - (this.loadingDrawable.getIntrinsicWidth() / 2));
                    int centerY = (int) (this.rect.centerY() - (this.loadingDrawable.getIntrinsicHeight() / 2));
                    Drawable drawable4 = this.loadingDrawable;
                    drawable4.setBounds(centerX, centerY, drawable4.getIntrinsicWidth() + centerX, this.loadingDrawable.getIntrinsicHeight() + centerY);
                    this.loadingDrawable.draw(canvas);
                }
            } else if ((tLRPC$TL_theme2 != null && !themeInfo3.themeLoaded) || this.placeholderAlpha > BitmapDescriptorFactory.HUE_RED) {
                this.button.setAlpha(1.0f - this.placeholderAlpha);
                this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
                this.paint.setAlpha((int) (this.placeholderAlpha * 255.0f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.paint);
                if (this.loadingDrawable != null) {
                    int color2 = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7);
                    if (this.loadingColor != color2) {
                        Drawable drawable5 = this.loadingDrawable;
                        this.loadingColor = color2;
                        Theme.setDrawableColor(drawable5, color2);
                    }
                    int centerX2 = (int) (this.rect.centerX() - (this.loadingDrawable.getIntrinsicWidth() / 2));
                    int centerY2 = (int) (this.rect.centerY() - (this.loadingDrawable.getIntrinsicHeight() / 2));
                    this.loadingDrawable.setAlpha((int) (this.placeholderAlpha * 255.0f));
                    Drawable drawable6 = this.loadingDrawable;
                    drawable6.setBounds(centerX2, centerY2, drawable6.getIntrinsicWidth() + centerX2, this.loadingDrawable.getIntrinsicHeight() + centerY2);
                    this.loadingDrawable.draw(canvas);
                }
                if (this.themeInfo.themeLoaded) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long min2 = Math.min(17L, elapsedRealtime - this.lastDrawTime);
                    this.lastDrawTime = elapsedRealtime;
                    float f3 = this.placeholderAlpha - (((float) min2) / 180.0f);
                    this.placeholderAlpha = f3;
                    if (f3 < BitmapDescriptorFactory.HUE_RED) {
                        this.placeholderAlpha = BitmapDescriptorFactory.HUE_RED;
                    }
                    invalidate();
                }
            } else if (this.button.getAlpha() != 1.0f) {
                this.button.setAlpha(1.0f);
            }
        }

        private String getThemeName() {
            String name = this.themeInfo.getName();
            return name.toLowerCase().endsWith(".attheme") ? name.substring(0, name.lastIndexOf(46)) : name;
        }

        private int blend(int i, int i2) {
            float f = this.accentState;
            return f == 1.0f ? i2 : ((Integer) this.evaluator.evaluate(f, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setText(getThemeName());
            accessibilityNodeInfo.setClassName(Button.class.getName());
            accessibilityNodeInfo.setChecked(this.button.isChecked());
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setEnabled(true);
            if (Build.VERSION.SDK_INT >= 21) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions)));
            }
        }
    }

    public ThemesHorizontalListCell(Context context, BaseFragment baseFragment, int i, ArrayList<Theme.ThemeInfo> arrayList, ArrayList<Theme.ThemeInfo> arrayList2) {
        super(context);
        this.loadingThemes = new HashMap<>();
        this.loadingWallpapers = new HashMap<>();
        this.customThemes = arrayList2;
        this.defaultThemes = arrayList;
        this.currentType = i;
        this.fragment = baseFragment;
        if (i == 2) {
            setBackgroundColor(Theme.getColor(Theme.key_dialogBackground));
        } else {
            setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        setItemAnimator(null);
        setLayoutAnimation(null);
        this.horizontalLayoutManager = new LinearLayoutManager(this, context) { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        };
        setPadding(0, 0, 0, 0);
        setClipToPadding(false);
        this.horizontalLayoutManager.setOrientation(0);
        setLayoutManager(this.horizontalLayoutManager);
        ThemesListAdapter themesListAdapter = new ThemesListAdapter(context);
        this.adapter = themesListAdapter;
        setAdapter(themesListAdapter);
        setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                ThemesHorizontalListCell.this.lambda$new$0(view, i2);
            }
        });
        setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                boolean lambda$new$1;
                lambda$new$1 = ThemesHorizontalListCell.this.lambda$new$1(view, i2);
                return lambda$new$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        selectTheme(((InnerThemeView) view).themeInfo);
        int left = view.getLeft();
        int right = view.getRight();
        if (left < 0) {
            smoothScrollBy(left - AndroidUtilities.m107dp(8), 0);
        } else if (right > getMeasuredWidth()) {
            smoothScrollBy(right - getMeasuredWidth(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(View view, int i) {
        showOptionsForTheme(((InnerThemeView) view).themeInfo);
        return true;
    }

    public void selectTheme(Theme.ThemeInfo themeInfo) {
        TLRPC$TL_theme tLRPC$TL_theme = themeInfo.info;
        if (tLRPC$TL_theme != null) {
            if (!themeInfo.themeLoaded) {
                return;
            }
            if (tLRPC$TL_theme.document == null) {
                BaseFragment baseFragment = this.fragment;
                if (baseFragment != null) {
                    baseFragment.presentFragment(new ThemeSetUrlActivity(themeInfo, null, true));
                    return;
                }
                return;
            }
        }
        if (!TextUtils.isEmpty(themeInfo.assetName)) {
            Theme.PatternsLoader.createLoader(false);
        }
        SharedPreferences.Editor edit = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit();
        edit.putString((this.currentType == 1 || themeInfo.isDark()) ? "lastDarkTheme" : "lastDayTheme", themeInfo.getKey());
        edit.commit();
        if (this.currentType == 1) {
            if (themeInfo == Theme.getCurrentNightTheme()) {
                return;
            }
            Theme.setCurrentNightTheme(themeInfo);
        } else if (themeInfo == Theme.getCurrentTheme()) {
            return;
        } else {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, themeInfo, Boolean.FALSE, null, -1);
        }
        updateRows();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof InnerThemeView) {
                ((InnerThemeView) childAt).updateCurrentThemeCheck();
            }
        }
        EmojiThemes.saveCustomTheme(themeInfo, themeInfo.currentAccentId);
        if (this.currentType != 1) {
            Theme.turnOffAutoNight(this.fragment);
        }
    }

    public void setDrawDivider(boolean z) {
        this.drawDivider = z;
    }

    public void notifyDataSetChanged(int i) {
        if (this.prevCount == this.adapter.getItemCount()) {
            return;
        }
        this.adapter.notifyDataSetChanged();
        if (this.prevThemeInfo != (this.currentType == 1 ? Theme.getCurrentNightTheme() : Theme.getCurrentTheme())) {
            scrollToCurrentTheme(i, false);
        }
    }

    @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (getParent() != null && getParent().getParent() != null) {
            getParent().getParent().requestDisallowInterceptTouchEvent(canScrollHorizontally(-1));
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.drawDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m107dp(20), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m107dp(20) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        invalidateViews();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i = 0; i < 5; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoadFailed);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        for (int i = 0; i < 5; i++) {
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.fileLoadFailed);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.fileLoaded) {
            String str = (String) objArr[0];
            final File file = (File) objArr[1];
            final Theme.ThemeInfo themeInfo = this.loadingThemes.get(str);
            if (themeInfo != null) {
                this.loadingThemes.remove(str);
                if (this.loadingWallpapers.remove(themeInfo) != null) {
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ThemesHorizontalListCell.this.lambda$didReceivedNotification$3(themeInfo, file);
                        }
                    });
                } else {
                    lambda$didReceivedNotification$2(themeInfo);
                }
            }
        } else if (i == NotificationCenter.fileLoadFailed) {
            this.loadingThemes.remove((String) objArr[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$3(final Theme.ThemeInfo themeInfo, File file) {
        themeInfo.badWallpaper = !themeInfo.createBackground(file, themeInfo.pathToWallpaper);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ThemesHorizontalListCell.this.lambda$didReceivedNotification$2(themeInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkVisibleTheme */
    public void lambda$didReceivedNotification$2(Theme.ThemeInfo themeInfo) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof InnerThemeView) {
                InnerThemeView innerThemeView = (InnerThemeView) childAt;
                if (innerThemeView.themeInfo == themeInfo && innerThemeView.parseTheme()) {
                    innerThemeView.themeInfo.themeLoaded = true;
                    innerThemeView.applyTheme();
                }
            }
        }
    }

    public void scrollToCurrentTheme(int i, boolean z) {
        View view;
        if (i == 0 && (view = (View) getParent()) != null) {
            i = view.getMeasuredWidth();
        }
        if (i == 0) {
            return;
        }
        Theme.ThemeInfo currentNightTheme = this.currentType == 1 ? Theme.getCurrentNightTheme() : Theme.getCurrentTheme();
        this.prevThemeInfo = currentNightTheme;
        int indexOf = this.defaultThemes.indexOf(currentNightTheme);
        if (indexOf >= 0 || (indexOf = this.customThemes.indexOf(this.prevThemeInfo) + this.defaultThemes.size()) >= 0) {
            if (z) {
                smoothScrollToPosition(indexOf);
            } else {
                this.horizontalLayoutManager.scrollToPositionWithOffset(indexOf, (i - AndroidUtilities.m107dp(76)) / 2);
            }
        }
    }
}
