package org.telegram.p043ui.Cells;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.Date;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.DotDividerSpan;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LineProgressView;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.FilteredSearchView;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_messageMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_photoSizeEmpty;
/* renamed from: org.telegram.ui.Cells.SharedDocumentCell */
/* loaded from: classes5.dex */
public class SharedDocumentCell extends FrameLayout implements DownloadController.FileDownloadProgressListener {
    private int TAG;
    private CharSequence caption;
    private TextView captionTextView;
    private CheckBox2 checkBox;
    private int currentAccount;
    private AnimatedEmojiSpan.TextViewEmojis dateTextView;
    private SpannableStringBuilder dotSpan;
    private long downloadedSize;
    private boolean drawDownloadIcon;
    float enterAlpha;
    private TextView extTextView;
    FlickerLoadingView globalGradientView;
    boolean ignoreRequestLayout;
    private boolean loaded;
    private boolean loading;
    private MessageObject message;
    private TextView nameTextView;
    private boolean needDivider;
    private ImageView placeholderImageView;
    private LineProgressView progressView;
    private final Theme.ResourcesProvider resourcesProvider;
    public TextView rightDateTextView;
    boolean showReorderIcon;
    float showReorderIconProgress;
    private RLottieDrawable statusDrawable;
    private RLottieImageView statusImageView;
    private BackupImageView thumbImageView;
    private int viewType;

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    public SharedDocumentCell(Context context, int i) {
        this(context, i, null);
    }

    public SharedDocumentCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.drawDownloadIcon = true;
        int i2 = UserConfig.selectedAccount;
        this.currentAccount = i2;
        this.enterAlpha = 1.0f;
        this.resourcesProvider = resourcesProvider;
        this.viewType = i;
        this.TAG = DownloadController.getInstance(i2).generateObserverTag();
        ImageView imageView = new ImageView(context);
        this.placeholderImageView = imageView;
        if (i == 1) {
            boolean z = LocaleController.isRTL;
            addView(imageView, LayoutHelper.createFrame(42, 42, (z ? 5 : 3) | 48, z ? 0 : 15, 12, z ? 15 : 0, 0));
        } else {
            boolean z2 = LocaleController.isRTL;
            addView(imageView, LayoutHelper.createFrame(40, 40, (z2 ? 5 : 3) | 48, z2 ? 0 : 12, 8, z2 ? 12 : 0, 0));
        }
        TextView textView = new TextView(context);
        this.extTextView = textView;
        textView.setTextColor(getThemedColor(Theme.key_files_iconText));
        this.extTextView.setTextSize(1, 14.0f);
        this.extTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.extTextView.setLines(1);
        this.extTextView.setMaxLines(1);
        this.extTextView.setSingleLine(true);
        this.extTextView.setGravity(17);
        this.extTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.extTextView.setImportantForAccessibility(2);
        if (i == 1) {
            View view = this.extTextView;
            boolean z3 = LocaleController.isRTL;
            addView(view, LayoutHelper.createFrame(32, -2, (z3 ? 5 : 3) | 48, z3 ? 0 : 20, 28, z3 ? 20 : 0, 0));
        } else {
            View view2 = this.extTextView;
            boolean z4 = LocaleController.isRTL;
            addView(view2, LayoutHelper.createFrame(32, -2, (z4 ? 5 : 3) | 48, z4 ? 0 : 16, 22, z4 ? 16 : 0, 0));
        }
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Cells.SharedDocumentCell.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                float currentAlpha = SharedDocumentCell.this.thumbImageView.getImageReceiver().hasBitmapImage() ? 1.0f - SharedDocumentCell.this.thumbImageView.getImageReceiver().getCurrentAlpha() : 1.0f;
                SharedDocumentCell.this.extTextView.setAlpha(currentAlpha);
                SharedDocumentCell.this.placeholderImageView.setAlpha(currentAlpha);
                super.onDraw(canvas);
            }
        };
        this.thumbImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m107dp(4));
        if (i == 1) {
            View view3 = this.thumbImageView;
            boolean z5 = LocaleController.isRTL;
            addView(view3, LayoutHelper.createFrame(42, 42, (z5 ? 5 : 3) | 48, z5 ? 0 : 16, 12, z5 ? 16 : 0, 0));
        } else {
            View view4 = this.thumbImageView;
            boolean z6 = LocaleController.isRTL;
            addView(view4, LayoutHelper.createFrame(40, 40, (z6 ? 5 : 3) | 48, z6 ? 0 : 12, 8, z6 ? 12 : 0, 0));
        }
        TextView textView2 = new TextView(context);
        this.nameTextView = textView2;
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        textView2.setTextColor(getThemedColor(i3));
        this.nameTextView.setTextSize(1, 16.0f);
        this.nameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.nameTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.nameTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        if (i == 1) {
            this.nameTextView.setLines(1);
            this.nameTextView.setMaxLines(1);
            this.nameTextView.setSingleLine(true);
            View view5 = this.nameTextView;
            boolean z7 = LocaleController.isRTL;
            addView(view5, LayoutHelper.createFrame(-1, -2, (z7 ? 5 : 3) | 48, z7 ? 8 : 72, 9, z7 ? 72 : 8, 0));
        } else if (i == 2) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            boolean z8 = LocaleController.isRTL;
            addView(linearLayout, LayoutHelper.createFrame(-1, -2, (z8 ? 5 : 3) | 48, z8 ? 16 : 72, 5, z8 ? 72 : 16, 0));
            TextView textView3 = new TextView(context);
            this.rightDateTextView = textView3;
            textView3.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
            this.rightDateTextView.setTextSize(1, 14.0f);
            if (!LocaleController.isRTL) {
                linearLayout.addView(this.nameTextView, LayoutHelper.createLinear(-2, -2, 1.0f));
                linearLayout.addView(this.rightDateTextView, LayoutHelper.createLinear(-2, -2, (float) BitmapDescriptorFactory.HUE_RED, 4, 0, 0, 0));
            } else {
                linearLayout.addView(this.rightDateTextView, LayoutHelper.createLinear(-2, -2, (float) BitmapDescriptorFactory.HUE_RED));
                linearLayout.addView(this.nameTextView, LayoutHelper.createLinear(-2, -2, 1.0f, 0, 0, 4, 0));
            }
            this.nameTextView.setMaxLines(2);
            TextView textView4 = new TextView(context);
            this.captionTextView = textView4;
            textView4.setTextColor(getThemedColor(i3));
            this.captionTextView.setLines(1);
            this.captionTextView.setMaxLines(1);
            this.captionTextView.setSingleLine(true);
            this.captionTextView.setEllipsize(TextUtils.TruncateAt.END);
            this.captionTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            this.captionTextView.setTextSize(1, 13.0f);
            View view6 = this.captionTextView;
            boolean z9 = LocaleController.isRTL;
            addView(view6, LayoutHelper.createFrame(-1, -2, (z9 ? 5 : 3) | 48, z9 ? 8 : 72, 30, z9 ? 72 : 8, 0));
            this.captionTextView.setVisibility(8);
        } else {
            this.nameTextView.setMaxLines(1);
            View view7 = this.nameTextView;
            boolean z10 = LocaleController.isRTL;
            addView(view7, LayoutHelper.createFrame(-1, -2, (z10 ? 5 : 3) | 48, z10 ? 8 : 72, 5, z10 ? 72 : 8, 0));
        }
        this.statusDrawable = new RLottieDrawable(C3632R.raw.download_arrow, "download_arrow", AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(14), true, null);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.statusImageView = rLottieImageView;
        rLottieImageView.setAnimation(this.statusDrawable);
        this.statusImageView.setVisibility(4);
        RLottieImageView rLottieImageView2 = this.statusImageView;
        int i4 = Theme.key_sharedMedia_startStopLoadIcon;
        rLottieImageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(i4), PorterDuff.Mode.MULTIPLY));
        if (i == 1) {
            View view8 = this.statusImageView;
            boolean z11 = LocaleController.isRTL;
            addView(view8, LayoutHelper.createFrame(14, 14, (z11 ? 5 : 3) | 48, z11 ? 8 : 70, 37, z11 ? 72 : 8, 0));
        } else {
            View view9 = this.statusImageView;
            boolean z12 = LocaleController.isRTL;
            addView(view9, LayoutHelper.createFrame(14, 14, (z12 ? 5 : 3) | 48, z12 ? 8 : 70, 33, z12 ? 72 : 8, 0));
        }
        AnimatedEmojiSpan.TextViewEmojis textViewEmojis = new AnimatedEmojiSpan.TextViewEmojis(context);
        this.dateTextView = textViewEmojis;
        textViewEmojis.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
        this.dateTextView.setLines(1);
        this.dateTextView.setMaxLines(1);
        this.dateTextView.setSingleLine(true);
        this.dateTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.dateTextView.setGravity(16 | (LocaleController.isRTL ? 5 : 3));
        NotificationCenter.listenEmojiLoading(this.dateTextView);
        if (i == 1) {
            this.dateTextView.setTextSize(1, 13.0f);
            View view10 = this.dateTextView;
            boolean z13 = LocaleController.isRTL;
            addView(view10, LayoutHelper.createFrame(-1, -2, (z13 ? 5 : 3) | 48, z13 ? 8 : 72, 34, z13 ? 72 : 8, 0));
        } else {
            this.dateTextView.setTextSize(1, 13.0f);
            View view11 = this.dateTextView;
            boolean z14 = LocaleController.isRTL;
            addView(view11, LayoutHelper.createFrame(-1, -2, (z14 ? 5 : 3) | 48, z14 ? 8 : 72, 30, z14 ? 72 : 8, 0));
        }
        LineProgressView lineProgressView = new LineProgressView(context);
        this.progressView = lineProgressView;
        lineProgressView.setProgressColor(getThemedColor(i4));
        View view12 = this.progressView;
        boolean z15 = LocaleController.isRTL;
        addView(view12, LayoutHelper.createFrame(-1, 2, (z15 ? 5 : 3) | 48, z15 ? 0 : 72, 54, z15 ? 72 : 0, 0));
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setVisibility(4);
        this.checkBox.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
        this.checkBox.setDrawUnchecked(false);
        this.checkBox.setDrawBackgroundAsArc(2);
        if (i == 1) {
            View view13 = this.checkBox;
            boolean z16 = LocaleController.isRTL;
            addView(view13, LayoutHelper.createFrame(24, 24, (z16 ? 5 : 3) | 48, z16 ? 0 : 38, 36, z16 ? 38 : 0, 0));
        } else {
            View view14 = this.checkBox;
            boolean z17 = LocaleController.isRTL;
            addView(view14, LayoutHelper.createFrame(24, 24, (z17 ? 5 : 3) | 48, z17 ? 0 : 33, 28, z17 ? 33 : 0, 0));
        }
        if (i == 2) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(".");
            this.dotSpan = spannableStringBuilder;
            spannableStringBuilder.setSpan(new DotDividerSpan(), 0, 1, 0);
        }
    }

    public void setDrawDownloadIcon(boolean z) {
        this.drawDownloadIcon = z;
    }

    public void setTextAndValueAndTypeAndThumb(String str, String str2, String str3, String str4, int i, boolean z) {
        int i2;
        int i3;
        this.nameTextView.setText(str);
        this.dateTextView.setText(str2);
        if (str3 != null) {
            this.extTextView.setVisibility(0);
            this.extTextView.setText(str3.toLowerCase());
        } else {
            this.extTextView.setVisibility(4);
        }
        this.needDivider = z;
        if (i == 0) {
            this.placeholderImageView.setImageResource(AndroidUtilities.getThumbForNameOrMime(str, str3, false));
            this.placeholderImageView.setVisibility(0);
        } else {
            this.placeholderImageView.setVisibility(4);
        }
        if (str4 != null || i != 0) {
            if (str4 != null) {
                if (this.viewType != 3) {
                    this.thumbImageView.setImage(str4, "42_42", null);
                }
            } else {
                CombinedDrawable createCircleDrawableWithIcon = Theme.createCircleDrawableWithIcon(AndroidUtilities.m107dp(42), i);
                if (i == C3632R.C3634drawable.files_storage) {
                    i2 = Theme.key_chat_attachLocationBackground;
                    i3 = Theme.key_chat_attachIcon;
                } else if (i == C3632R.C3634drawable.files_gallery) {
                    i2 = Theme.key_chat_attachContactBackground;
                    i3 = Theme.key_chat_attachIcon;
                } else if (i == C3632R.C3634drawable.files_music) {
                    i2 = Theme.key_chat_attachAudioBackground;
                    i3 = Theme.key_chat_attachIcon;
                } else if (i == C3632R.C3634drawable.files_internal) {
                    i2 = Theme.key_chat_attachGalleryBackground;
                    i3 = Theme.key_chat_attachIcon;
                } else {
                    i2 = Theme.key_files_folderIconBackground;
                    i3 = Theme.key_files_folderIcon;
                }
                Theme.setCombinedDrawableColor(createCircleDrawableWithIcon, getThemedColor(i2), false);
                Theme.setCombinedDrawableColor(createCircleDrawableWithIcon, getThemedColor(i3), true);
                this.thumbImageView.setImageDrawable(createCircleDrawableWithIcon);
            }
            this.thumbImageView.setVisibility(0);
        } else {
            this.extTextView.setAlpha(1.0f);
            this.placeholderImageView.setAlpha(1.0f);
            if (this.viewType != 3) {
                this.thumbImageView.setImageBitmap(null);
                this.thumbImageView.setVisibility(4);
            }
        }
        setWillNotDraw(true ^ this.needDivider);
    }

    public void setPhotoEntry(MediaController.PhotoEntry photoEntry) {
        String str;
        String str2 = photoEntry.thumbPath;
        if (str2 != null) {
            this.thumbImageView.setImage(str2, null, Theme.chat_attachEmptyDrawable);
            str = photoEntry.thumbPath;
        } else if (photoEntry.path != null) {
            if (photoEntry.isVideo) {
                this.thumbImageView.setOrientation(0, true);
                BackupImageView backupImageView = this.thumbImageView;
                backupImageView.setImage("vthumb://" + photoEntry.imageId + ":" + photoEntry.path, null, Theme.chat_attachEmptyDrawable);
            } else {
                this.thumbImageView.setOrientation(photoEntry.orientation, photoEntry.invert, true);
                BackupImageView backupImageView2 = this.thumbImageView;
                backupImageView2.setImage("thumb://" + photoEntry.imageId + ":" + photoEntry.path, null, Theme.chat_attachEmptyDrawable);
            }
            str = photoEntry.path;
        } else {
            this.thumbImageView.setImageDrawable(Theme.chat_attachEmptyDrawable);
            str = "";
        }
        File file = new File(str);
        this.nameTextView.setText(file.getName());
        FileLoader.getFileExtension(file);
        this.extTextView.setVisibility(8);
        StringBuilder sb = new StringBuilder();
        if (photoEntry.width != 0 && photoEntry.height != 0) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(String.format(Locale.US, "%dx%d", Integer.valueOf(photoEntry.width), Integer.valueOf(photoEntry.height)));
        }
        if (photoEntry.isVideo) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(AndroidUtilities.formatShortDuration(photoEntry.duration));
        }
        if (photoEntry.size != 0) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(AndroidUtilities.formatFileSize(photoEntry.size));
        }
        if (sb.length() > 0) {
            sb.append(", ");
        }
        sb.append(LocaleController.getInstance().formatterStats.format(photoEntry.dateTaken));
        this.dateTextView.setText(sb);
        this.placeholderImageView.setVisibility(8);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.progressView.getVisibility() == 0) {
            updateFileExistIcon(false);
        }
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.checkBox.getVisibility() != 0) {
            this.checkBox.setVisibility(0);
        }
        this.checkBox.setChecked(z, z2);
    }

    public void setDocument(MessageObject messageObject, boolean z) {
        boolean z2;
        boolean z3;
        String str;
        String str2;
        String str3;
        MessageObject messageObject2 = this.message;
        if (messageObject2 == null || messageObject == null || messageObject2.getId() == messageObject.getId()) {
            z2 = z;
            z3 = false;
        } else {
            z2 = z;
            z3 = true;
        }
        this.needDivider = z2;
        this.message = messageObject;
        this.loaded = false;
        this.loading = false;
        if (!z3) {
            this.downloadedSize = 0L;
        }
        TLRPC$Document document = messageObject.getDocument();
        if (document != null) {
            String str4 = null;
            if (messageObject.isMusic()) {
                for (int i = 0; i < document.attributes.size(); i++) {
                    TLRPC$DocumentAttribute tLRPC$DocumentAttribute = document.attributes.get(i);
                    if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) && (((str2 = tLRPC$DocumentAttribute.performer) != null && str2.length() != 0) || ((str3 = tLRPC$DocumentAttribute.title) != null && str3.length() != 0))) {
                        str4 = messageObject.getMusicAuthor() + " - " + messageObject.getMusicTitle();
                    }
                }
            }
            String documentFileName = (messageObject.isVideo() || (messageObject.messageOwner.media instanceof TLRPC$TL_messageMediaPhoto) || MessageObject.isGifDocument(document)) ? null : FileLoader.getDocumentFileName(document);
            if (TextUtils.isEmpty(documentFileName) && (str = document.mime_type) != null) {
                documentFileName = str.startsWith("video") ? MessageObject.isGifDocument(document) ? LocaleController.getString("AttachGif", C3632R.string.AttachGif) : LocaleController.getString("AttachVideo", C3632R.string.AttachVideo) : document.mime_type.startsWith("image") ? MessageObject.isGifDocument(document) ? LocaleController.getString("AttachGif", C3632R.string.AttachGif) : LocaleController.getString("AttachPhoto", C3632R.string.AttachPhoto) : document.mime_type.startsWith("audio") ? LocaleController.getString("AttachAudio", C3632R.string.AttachAudio) : LocaleController.getString("AttachDocument", C3632R.string.AttachDocument);
            }
            if (str4 == null) {
                str4 = documentFileName;
            }
            CharSequence highlightText = AndroidUtilities.highlightText(str4, messageObject.highlightedWords, this.resourcesProvider);
            if (highlightText != null) {
                this.nameTextView.setText(highlightText);
            } else {
                this.nameTextView.setText(str4);
            }
            this.placeholderImageView.setVisibility(0);
            this.extTextView.setVisibility(0);
            this.placeholderImageView.setImageResource(AndroidUtilities.getThumbForNameOrMime(documentFileName, document.mime_type, false));
            TextView textView = this.extTextView;
            int lastIndexOf = documentFileName.lastIndexOf(46);
            textView.setText(lastIndexOf != -1 ? documentFileName.substring(lastIndexOf + 1).toLowerCase() : "");
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320);
            TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 40);
            if (closestPhotoSizeWithSize2 == closestPhotoSizeWithSize) {
                closestPhotoSizeWithSize = null;
            }
            if ((closestPhotoSizeWithSize2 instanceof TLRPC$TL_photoSizeEmpty) || closestPhotoSizeWithSize2 == null) {
                this.thumbImageView.setVisibility(4);
                this.thumbImageView.setImageBitmap(null);
                this.extTextView.setAlpha(1.0f);
                this.placeholderImageView.setAlpha(1.0f);
            } else {
                this.thumbImageView.getImageReceiver().setNeedsQualityThumb(closestPhotoSizeWithSize == null);
                this.thumbImageView.getImageReceiver().setShouldGenerateQualityThumb(closestPhotoSizeWithSize == null);
                this.thumbImageView.setVisibility(0);
                if (messageObject.strippedThumb != null) {
                    this.thumbImageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "40_40", (ImageLocation) null, (String) null, messageObject.strippedThumb, (Bitmap) null, (String) null, 1, messageObject);
                } else {
                    this.thumbImageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "40_40", ImageLocation.getForDocument(closestPhotoSizeWithSize2, document), "40_40_b", null, 0L, 1, messageObject);
                }
            }
            updateDateView();
            if (messageObject.hasHighlightedWords() && !TextUtils.isEmpty(this.message.messageOwner.message)) {
                CharSequence highlightText2 = AndroidUtilities.highlightText(this.message.messageOwner.message.replace("\n", " ").replaceAll(" +", " ").trim(), this.message.highlightedWords, this.resourcesProvider);
                this.caption = highlightText2;
                TextView textView2 = this.captionTextView;
                if (textView2 != null) {
                    textView2.setVisibility(highlightText2 != null ? 0 : 8);
                }
            } else {
                TextView textView3 = this.captionTextView;
                if (textView3 != null) {
                    textView3.setVisibility(8);
                }
            }
        } else {
            this.nameTextView.setText("");
            this.extTextView.setText("");
            this.dateTextView.setText("");
            this.placeholderImageView.setVisibility(0);
            this.extTextView.setVisibility(0);
            this.extTextView.setAlpha(1.0f);
            this.placeholderImageView.setAlpha(1.0f);
            this.thumbImageView.setVisibility(4);
            this.thumbImageView.setImageBitmap(null);
            this.caption = null;
            TextView textView4 = this.captionTextView;
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
        }
        setWillNotDraw(!this.needDivider);
        this.progressView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
        updateFileExistIcon(z3);
    }

    private void updateDateView() {
        String format;
        MessageObject messageObject = this.message;
        if (messageObject == null || messageObject.getDocument() == null) {
            return;
        }
        MessageObject messageObject2 = this.message;
        long j = messageObject2.messageOwner.date * 1000;
        long j2 = this.downloadedSize;
        if (j2 == 0) {
            format = AndroidUtilities.formatFileSize(messageObject2.getDocument().size);
        } else {
            format = String.format(Locale.ENGLISH, "%s / %s", AndroidUtilities.formatFileSize(j2), AndroidUtilities.formatFileSize(this.message.getDocument().size));
        }
        if (this.viewType == 2) {
            this.dateTextView.setText(new SpannableStringBuilder().append((CharSequence) format).append(' ').append((CharSequence) this.dotSpan).append(' ').append(FilteredSearchView.createFromInfoString(this.message, true, 2, this.dateTextView.getPaint())));
            this.rightDateTextView.setText(LocaleController.stringForMessageListDate(this.message.messageOwner.date));
            return;
        }
        this.dateTextView.setText(String.format("%s, %s", format, LocaleController.formatString("formatDateAtTime", C3632R.string.formatDateAtTime, LocaleController.getInstance().formatterYear.format(new Date(j)), LocaleController.getInstance().formatterDay.format(new Date(j)))));
    }

    public void updateFileExistIcon(boolean z) {
        if (z && Build.VERSION.SDK_INT >= 19) {
            TransitionSet transitionSet = new TransitionSet();
            ChangeBounds changeBounds = new ChangeBounds();
            changeBounds.setDuration(150L);
            transitionSet.addTransition(new Fade().setDuration(150L)).addTransition(changeBounds);
            transitionSet.setOrdering(0);
            transitionSet.setInterpolator((TimeInterpolator) CubicBezierInterpolator.DEFAULT);
            TransitionManager.beginDelayedTransition(this, transitionSet);
        }
        MessageObject messageObject = this.message;
        if (messageObject != null && messageObject.messageOwner.media != null) {
            this.loaded = false;
            if (messageObject.attachPathExists || messageObject.mediaExists || !this.drawDownloadIcon) {
                this.statusImageView.setVisibility(4);
                this.progressView.setVisibility(4);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.dateTextView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.leftMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 8 : 72);
                    layoutParams.rightMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 72 : 8);
                    this.dateTextView.requestLayout();
                }
                this.loading = false;
                this.loaded = true;
                DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
                return;
            }
            String attachFileName = FileLoader.getAttachFileName(messageObject.getDocument());
            DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(attachFileName, this.message, this);
            this.loading = FileLoader.getInstance(this.currentAccount).isLoadingFile(attachFileName);
            this.statusImageView.setVisibility(0);
            this.statusDrawable.setCustomEndFrame(this.loading ? 15 : 0);
            this.statusDrawable.setPlayInDirectionOfCustomEndFrame(true);
            if (z) {
                this.statusImageView.playAnimation();
            } else {
                this.statusDrawable.setCurrentFrame(this.loading ? 15 : 0);
                this.statusImageView.invalidate();
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.dateTextView.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams2.leftMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 8 : 86);
                layoutParams2.rightMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 86 : 8);
                this.dateTextView.requestLayout();
            }
            if (this.loading) {
                this.progressView.setVisibility(0);
                Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                if (fileProgress == null) {
                    fileProgress = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
                }
                this.progressView.setProgress(fileProgress.floatValue(), false);
                return;
            }
            this.progressView.setVisibility(4);
            return;
        }
        this.loading = false;
        this.loaded = true;
        this.progressView.setVisibility(4);
        this.progressView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
        this.statusImageView.setVisibility(4);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.dateTextView.getLayoutParams();
        if (layoutParams3 != null) {
            layoutParams3.leftMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 8 : 72);
            layoutParams3.rightMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 72 : 8);
            this.dateTextView.requestLayout();
        }
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    public MessageObject getMessage() {
        return this.message;
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    public boolean isLoading() {
        return this.loading;
    }

    public BackupImageView getImageView() {
        return this.thumbImageView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.viewType;
        if (i3 == 1) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(64) + (this.needDivider ? 1 : 0), 1073741824));
        } else if (i3 == 0) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(56), 1073741824));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(56), 1073741824));
            int m107dp = AndroidUtilities.m107dp(34) + this.nameTextView.getMeasuredHeight() + (this.needDivider ? 1 : 0);
            if (this.caption != null && this.captionTextView != null && this.message.hasHighlightedWords()) {
                this.ignoreRequestLayout = true;
                this.captionTextView.setText(AndroidUtilities.ellipsizeCenterEnd(this.caption, this.message.highlightedWords.get(0), this.captionTextView.getMeasuredWidth(), this.captionTextView.getPaint(), TsExtractor.TS_STREAM_TYPE_HDMV_DTS));
                this.ignoreRequestLayout = false;
                m107dp += this.captionTextView.getMeasuredHeight() + AndroidUtilities.m107dp(3);
            }
            setMeasuredDimension(getMeasuredWidth(), m107dp);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreRequestLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TextView textView;
        super.onLayout(z, i, i2, i3, i4);
        if (this.viewType != 1) {
            if (this.nameTextView.getLineCount() > 1 || ((textView = this.captionTextView) != null && textView.getVisibility() == 0)) {
                int measuredHeight = this.nameTextView.getMeasuredHeight() - AndroidUtilities.m107dp(22);
                TextView textView2 = this.captionTextView;
                if (textView2 != null && textView2.getVisibility() == 0) {
                    TextView textView3 = this.captionTextView;
                    textView3.layout(textView3.getLeft(), this.captionTextView.getTop() + measuredHeight, this.captionTextView.getRight(), this.captionTextView.getBottom() + measuredHeight);
                    measuredHeight += this.captionTextView.getMeasuredHeight() + AndroidUtilities.m107dp(3);
                }
                AnimatedEmojiSpan.TextViewEmojis textViewEmojis = this.dateTextView;
                textViewEmojis.layout(textViewEmojis.getLeft(), this.dateTextView.getTop() + measuredHeight, this.dateTextView.getRight(), this.dateTextView.getBottom() + measuredHeight);
                RLottieImageView rLottieImageView = this.statusImageView;
                rLottieImageView.layout(rLottieImageView.getLeft(), this.statusImageView.getTop() + measuredHeight, this.statusImageView.getRight(), measuredHeight + this.statusImageView.getBottom());
                LineProgressView lineProgressView = this.progressView;
                lineProgressView.layout(lineProgressView.getLeft(), (getMeasuredHeight() - this.progressView.getMeasuredHeight()) - (this.needDivider ? 1 : 0), this.progressView.getRight(), getMeasuredHeight() - (this.needDivider ? 1 : 0));
            }
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
        updateFileExistIcon(true);
        this.downloadedSize = 0L;
        updateDateView();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        this.progressView.setProgress(1.0f, true);
        updateFileExistIcon(true);
        this.downloadedSize = 0L;
        updateDateView();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        if (this.progressView.getVisibility() != 0) {
            updateFileExistIcon(true);
        }
        this.downloadedSize = j;
        updateDateView();
        this.progressView.setProgress(Math.min(1.0f, ((float) j) / ((float) j2)), true);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setGlobalGradientView(FlickerLoadingView flickerLoadingView) {
        this.globalGradientView = flickerLoadingView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.enterAlpha != 1.0f && this.globalGradientView != null) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), (int) ((1.0f - this.enterAlpha) * 255.0f), 31);
            this.globalGradientView.setViewType(3);
            this.globalGradientView.updateColors();
            this.globalGradientView.updateGradient();
            this.globalGradientView.draw(canvas);
            canvas.restore();
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), (int) (this.enterAlpha * 255.0f), 31);
            super.dispatchDraw(canvas);
            drawDivider(canvas);
            canvas.restore();
        } else {
            super.dispatchDraw(canvas);
            drawDivider(canvas);
        }
        boolean z = this.showReorderIcon;
        if (z || this.showReorderIconProgress != BitmapDescriptorFactory.HUE_RED) {
            if (z) {
                float f = this.showReorderIconProgress;
                if (f != 1.0f) {
                    this.showReorderIconProgress = f + 0.10666667f;
                    invalidate();
                    this.showReorderIconProgress = Utilities.clamp(this.showReorderIconProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    int measuredWidth = (getMeasuredWidth() - AndroidUtilities.m107dp(12)) - Theme.dialogs_reorderDrawable.getIntrinsicWidth();
                    int measuredHeight = (getMeasuredHeight() - Theme.dialogs_reorderDrawable.getIntrinsicHeight()) >> 1;
                    canvas.save();
                    float f2 = this.showReorderIconProgress;
                    canvas.scale(f2, f2, measuredWidth + (Theme.dialogs_reorderDrawable.getIntrinsicWidth() / 2.0f), measuredHeight + (Theme.dialogs_reorderDrawable.getIntrinsicHeight() / 2.0f));
                    Drawable drawable = Theme.dialogs_reorderDrawable;
                    drawable.setBounds(measuredWidth, measuredHeight, drawable.getIntrinsicWidth() + measuredWidth, Theme.dialogs_reorderDrawable.getIntrinsicHeight() + measuredHeight);
                    Theme.dialogs_reorderDrawable.draw(canvas);
                    canvas.restore();
                }
            }
            if (!z) {
                float f3 = this.showReorderIconProgress;
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                    this.showReorderIconProgress = f3 - 0.10666667f;
                    invalidate();
                }
            }
            this.showReorderIconProgress = Utilities.clamp(this.showReorderIconProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            int measuredWidth2 = (getMeasuredWidth() - AndroidUtilities.m107dp(12)) - Theme.dialogs_reorderDrawable.getIntrinsicWidth();
            int measuredHeight2 = (getMeasuredHeight() - Theme.dialogs_reorderDrawable.getIntrinsicHeight()) >> 1;
            canvas.save();
            float f22 = this.showReorderIconProgress;
            canvas.scale(f22, f22, measuredWidth2 + (Theme.dialogs_reorderDrawable.getIntrinsicWidth() / 2.0f), measuredHeight2 + (Theme.dialogs_reorderDrawable.getIntrinsicHeight() / 2.0f));
            Drawable drawable2 = Theme.dialogs_reorderDrawable;
            drawable2.setBounds(measuredWidth2, measuredHeight2, drawable2.getIntrinsicWidth() + measuredWidth2, Theme.dialogs_reorderDrawable.getIntrinsicHeight() + measuredHeight2);
            Theme.dialogs_reorderDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private void drawDivider(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(AndroidUtilities.m107dp(72), getHeight() - 1, getWidth() - getPaddingRight(), getHeight() - 1, Theme.getThemePaint("paintDivider", this.resourcesProvider));
        }
    }

    public void setEnterAnimationAlpha(float f) {
        if (this.enterAlpha != f) {
            this.enterAlpha = f;
            invalidate();
        }
    }

    public void showReorderIcon(boolean z, boolean z2) {
        if (this.showReorderIcon == z) {
            return;
        }
        this.showReorderIcon = z;
        if (!z2) {
            this.showReorderIconProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        invalidate();
    }

    public void setPhoto(String str) {
        if (str.endsWith("mp4")) {
            BackupImageView backupImageView = this.thumbImageView;
            backupImageView.setImage("vthumb://0:" + str, null, null);
            this.thumbImageView.setVisibility(0);
        } else if (str.endsWith(".jpg") || str.endsWith(".jpeg") || str.endsWith(".png") || str.endsWith(".gif")) {
            BackupImageView backupImageView2 = this.thumbImageView;
            backupImageView2.setImage("thumb://0:" + str, null, null);
            this.thumbImageView.setVisibility(0);
        } else {
            this.thumbImageView.setVisibility(8);
        }
    }
}
