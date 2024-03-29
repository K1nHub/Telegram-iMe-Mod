package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.common.ConnectionResult;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.Stories.StoryViewer;
import org.telegram.p043ui.Stories.recorder.HintView2;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.BulletinFactory */
/* loaded from: classes6.dex */
public final class BulletinFactory {
    private final FrameLayout containerLayout;
    private final BaseFragment fragment;
    private final Theme.ResourcesProvider resourcesProvider;

    /* renamed from: org.telegram.ui.Components.BulletinFactory$UndoObject */
    /* loaded from: classes6.dex */
    public static class UndoObject {
        public Runnable onAction;
        public Runnable onUndo;
    }

    /* renamed from: of */
    public static BulletinFactory m65of(BaseFragment baseFragment) {
        return new BulletinFactory(baseFragment);
    }

    /* renamed from: of */
    public static BulletinFactory m66of(FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider) {
        return new BulletinFactory(frameLayout, resourcesProvider);
    }

    public static boolean canShowBulletin(BaseFragment baseFragment) {
        return (baseFragment == null || baseFragment.getParentActivity() == null || baseFragment.getLayoutContainer() == null) ? false : true;
    }

    public static BulletinFactory global() {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return m66of(Bulletin.BulletinWindow.make(ApplicationLoader.applicationContext), null);
        }
        return m65of(lastFragment);
    }

    public void showForError(TLRPC$TL_error tLRPC$TL_error) {
        if (BuildVars.DEBUG_VERSION) {
            createErrorBulletin(tLRPC$TL_error.code + " " + tLRPC$TL_error.text).show();
            return;
        }
        createErrorBulletin(LocaleController.getString("UnknownError", C3632R.string.UnknownError)).show();
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum PHOTO uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: org.telegram.ui.Components.BulletinFactory$FileType */
    /* loaded from: classes6.dex */
    public static final class FileType {
        private static final /* synthetic */ FileType[] $VALUES;
        public static final FileType AUDIO;
        public static final FileType AUDIOS;
        public static final FileType GIF;
        public static final FileType GIF_TO_DOWNLOADS;
        public static final FileType MEDIA;
        public static final FileType PHOTO;
        public static final FileType PHOTOS;
        public static final FileType PHOTO_TO_DOWNLOADS;
        public static final FileType UNKNOWN;
        public static final FileType UNKNOWNS;
        public static final FileType VIDEO;
        public static final FileType VIDEOS;
        public static final FileType VIDEO_TO_DOWNLOADS;
        private final Icon icon;
        private final String localeKey;
        private final int localeRes;
        private final boolean plural;

        public static FileType valueOf(String str) {
            return (FileType) Enum.valueOf(FileType.class, str);
        }

        public static FileType[] values() {
            return (FileType[]) $VALUES.clone();
        }

        static {
            int i = C3632R.string.PhotoSavedHint;
            Icon icon = Icon.SAVED_TO_GALLERY;
            FileType fileType = new FileType("PHOTO", 0, "PhotoSavedHint", i, icon);
            PHOTO = fileType;
            FileType fileType2 = new FileType("PHOTOS", 1, "PhotosSavedHint", icon);
            PHOTOS = fileType2;
            FileType fileType3 = new FileType("VIDEO", 2, "VideoSavedHint", C3632R.string.VideoSavedHint, icon);
            VIDEO = fileType3;
            FileType fileType4 = new FileType("VIDEOS", 3, "VideosSavedHint", icon);
            VIDEOS = fileType4;
            FileType fileType5 = new FileType("MEDIA", 4, "MediaSavedHint", icon);
            MEDIA = fileType5;
            int i2 = C3632R.string.PhotoSavedToDownloadsHint;
            Icon icon2 = Icon.SAVED_TO_DOWNLOADS;
            FileType fileType6 = new FileType("PHOTO_TO_DOWNLOADS", 5, "PhotoSavedToDownloadsHint", i2, icon2);
            PHOTO_TO_DOWNLOADS = fileType6;
            FileType fileType7 = new FileType("VIDEO_TO_DOWNLOADS", 6, "VideoSavedToDownloadsHint", C3632R.string.VideoSavedToDownloadsHint, icon2);
            VIDEO_TO_DOWNLOADS = fileType7;
            FileType fileType8 = new FileType("GIF", 7, "GifSavedHint", C3632R.string.GifSavedHint, Icon.SAVED_TO_GIFS);
            GIF = fileType8;
            FileType fileType9 = new FileType("GIF_TO_DOWNLOADS", 8, "GifSavedToDownloadsHint", C3632R.string.GifSavedToDownloadsHint, icon2);
            GIF_TO_DOWNLOADS = fileType9;
            int i3 = C3632R.string.AudioSavedHint;
            Icon icon3 = Icon.SAVED_TO_MUSIC;
            FileType fileType10 = new FileType("AUDIO", 9, "AudioSavedHint", i3, icon3);
            AUDIO = fileType10;
            FileType fileType11 = new FileType("AUDIOS", 10, "AudiosSavedHint", icon3);
            AUDIOS = fileType11;
            FileType fileType12 = new FileType("UNKNOWN", 11, "FileSavedHint", C3632R.string.FileSavedHint, icon2);
            UNKNOWN = fileType12;
            FileType fileType13 = new FileType("UNKNOWNS", 12, "FilesSavedHint", icon2);
            UNKNOWNS = fileType13;
            $VALUES = new FileType[]{fileType, fileType2, fileType3, fileType4, fileType5, fileType6, fileType7, fileType8, fileType9, fileType10, fileType11, fileType12, fileType13};
        }

        private FileType(String str, int i, String str2, int i2, Icon icon) {
            this.localeKey = str2;
            this.localeRes = i2;
            this.icon = icon;
            this.plural = false;
        }

        private FileType(String str, int i, String str2, Icon icon) {
            this.localeKey = str2;
            this.icon = icon;
            this.localeRes = 0;
            this.plural = true;
        }

        private String getText() {
            return getText(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getText(int i) {
            if (this.plural) {
                return LocaleController.formatPluralString(this.localeKey, i, new Object[0]);
            }
            return LocaleController.getString(this.localeKey, this.localeRes);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.BulletinFactory$FileType$Icon */
        /* loaded from: classes6.dex */
        public enum Icon {
            SAVED_TO_DOWNLOADS(C3632R.raw.ic_download, 2, "Box", "Arrow"),
            SAVED_TO_GALLERY(C3632R.raw.ic_save_to_gallery, 0, "Box", "Arrow", "Mask", "Arrow 2", "Splash"),
            SAVED_TO_MUSIC(C3632R.raw.ic_save_to_music, 2, "Box", "Arrow"),
            SAVED_TO_GIFS(C3632R.raw.ic_save_to_gifs, 0, AnalyticsEvent.SendClip.typeGif);
            
            private final String[] layers;
            private final int paddingBottom;
            private final int resId;

            Icon(int i, int i2, String... strArr) {
                this.resId = i;
                this.paddingBottom = i2;
                this.layers = strArr;
            }
        }
    }

    private BulletinFactory(BaseFragment baseFragment) {
        StoryViewer storyViewer;
        if (baseFragment != null && (storyViewer = baseFragment.storyViewer) != null && storyViewer.attachedToParent()) {
            this.fragment = null;
            this.containerLayout = baseFragment.storyViewer.getContainerForBulletin();
            this.resourcesProvider = baseFragment.storyViewer.getResourceProvider();
            return;
        }
        this.fragment = baseFragment;
        this.containerLayout = null;
        this.resourcesProvider = baseFragment != null ? baseFragment.getResourceProvider() : null;
    }

    private BulletinFactory(FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider) {
        this.containerLayout = frameLayout;
        this.fragment = null;
        this.resourcesProvider = resourcesProvider;
    }

    public Bulletin createSimpleBulletin(int i, CharSequence charSequence) {
        return createSimpleBulletinWithIconSize(i, charSequence, 36);
    }

    public Bulletin createSimpleBulletinWithIconSize(int i, CharSequence charSequence, int i2) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        lottieLayout.setAnimation(i, i2, i2, new String[0]);
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(2);
        return create(lottieLayout, charSequence.length() < 20 ? ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED : 2750);
    }

    public Bulletin createImageBulletin(int i, CharSequence charSequence) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        lottieLayout.setBackground(Theme.getColor(Theme.key_undo_background, this.resourcesProvider), 12);
        lottieLayout.imageView.setImageResource(i);
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setLines(2);
        lottieLayout.textView.setMaxLines(4);
        LinkSpanDrawable.LinksTextView linksTextView = lottieLayout.textView;
        linksTextView.setMaxWidth(HintView2.cutInFancyHalf(linksTextView.getText(), lottieLayout.textView.getPaint()));
        ((ViewGroup.MarginLayoutParams) lottieLayout.textView.getLayoutParams()).rightMargin = AndroidUtilities.m107dp(12);
        lottieLayout.setWrapWidth();
        return create(lottieLayout, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }

    public Bulletin createSimpleLargeBulletin(int i, CharSequence charSequence, CharSequence charSequence2) {
        Bulletin.TwoLineLayout twoLineLayout = new Bulletin.TwoLineLayout(getContext(), this.resourcesProvider);
        twoLineLayout.imageView.setImageResource(i);
        twoLineLayout.titleTextView.setText(charSequence);
        twoLineLayout.subtitleTextView.setText(charSequence2);
        twoLineLayout.subtitleTextView.setSingleLine(false);
        twoLineLayout.subtitleTextView.setMaxLines(5);
        return create(twoLineLayout, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }

    public Bulletin createSimpleBulletin(int i, CharSequence charSequence, int i2) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        lottieLayout.setAnimation(i, 36, 36, new String[0]);
        if (charSequence != null) {
            String charSequence2 = charSequence.toString();
            SpannableStringBuilder spannableStringBuilder = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(charSequence);
            int i3 = 0;
            for (int indexOf = charSequence2.indexOf(10); indexOf >= 0 && indexOf < charSequence.length(); indexOf = charSequence2.indexOf(10, indexOf + 1)) {
                if (i3 >= i2) {
                    spannableStringBuilder.replace(indexOf, indexOf + 1, (CharSequence) " ");
                }
                i3++;
            }
            charSequence = spannableStringBuilder;
        }
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(i2);
        return create(lottieLayout, charSequence.length() < 20 ? ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED : 2750);
    }

    public Bulletin createSimpleBulletin(int i, CharSequence charSequence, int i2, int i3) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        lottieLayout.setAnimation(i, 36, 36, new String[0]);
        if (charSequence != null) {
            String charSequence2 = charSequence.toString();
            SpannableStringBuilder spannableStringBuilder = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(charSequence);
            int i4 = 0;
            for (int indexOf = charSequence2.indexOf(10); indexOf >= 0 && indexOf < charSequence.length(); indexOf = charSequence2.indexOf(10, indexOf + 1)) {
                if (i4 >= i2) {
                    spannableStringBuilder.replace(indexOf, indexOf + 1, (CharSequence) " ");
                }
                i4++;
            }
            charSequence = spannableStringBuilder;
        }
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(i2);
        return create(lottieLayout, i3);
    }

    public Bulletin createSimpleBulletin(int i, CharSequence charSequence, CharSequence charSequence2) {
        Bulletin.TwoLineLottieLayout twoLineLottieLayout = new Bulletin.TwoLineLottieLayout(getContext(), this.resourcesProvider);
        twoLineLottieLayout.setAnimation(i, 36, 36, new String[0]);
        twoLineLottieLayout.titleTextView.setText(charSequence);
        twoLineLottieLayout.subtitleTextView.setText(charSequence2);
        return create(twoLineLottieLayout, charSequence.length() + charSequence2.length() < 20 ? ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED : 2750);
    }

    public Bulletin createSimpleBulletin(int i, CharSequence charSequence, CharSequence charSequence2, Runnable runnable) {
        return createSimpleBulletin(i, charSequence, charSequence2, charSequence.length() < 20 ? ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED : 2750, runnable);
    }

    public Bulletin createSimpleBulletin(int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Runnable runnable) {
        Bulletin.TwoLineLottieLayout twoLineLottieLayout = new Bulletin.TwoLineLottieLayout(getContext(), this.resourcesProvider);
        twoLineLottieLayout.setAnimation(i, 36, 36, new String[0]);
        twoLineLottieLayout.titleTextView.setText(charSequence);
        twoLineLottieLayout.subtitleTextView.setText(charSequence2);
        twoLineLottieLayout.setButton(new Bulletin.UndoButton(getContext(), true, this.resourcesProvider).setText(charSequence3).setUndoAction(runnable));
        return create(twoLineLottieLayout, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }

    public Bulletin createSimpleBulletin(int i, CharSequence charSequence, CharSequence charSequence2, int i2, Runnable runnable) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        if (i != 0) {
            lottieLayout.setAnimation(i, 36, 36, new String[0]);
        } else {
            lottieLayout.imageView.setVisibility(4);
            ((ViewGroup.MarginLayoutParams) lottieLayout.textView.getLayoutParams()).leftMargin = AndroidUtilities.m107dp(16);
        }
        lottieLayout.textView.setTextSize(1, 14.0f);
        lottieLayout.textView.setTextDirection(5);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(3);
        lottieLayout.textView.setText(charSequence);
        lottieLayout.setButton(new Bulletin.UndoButton(getContext(), true, this.resourcesProvider).setText(charSequence2).setUndoAction(runnable));
        return create(lottieLayout, i2);
    }

    public Bulletin createSimpleBulletin(Drawable drawable, CharSequence charSequence) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        lottieLayout.imageView.setImageDrawable(drawable);
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(2);
        return create(lottieLayout, 2750);
    }

    public Bulletin createSimpleBulletin(Drawable drawable, CharSequence charSequence, CharSequence charSequence2, String str, Runnable runnable) {
        Bulletin.TwoLineLottieLayout twoLineLottieLayout = new Bulletin.TwoLineLottieLayout(getContext(), this.resourcesProvider);
        twoLineLottieLayout.imageView.setImageDrawable(drawable);
        twoLineLottieLayout.titleTextView.setText(charSequence);
        twoLineLottieLayout.subtitleTextView.setText(charSequence2);
        twoLineLottieLayout.setButton(new Bulletin.UndoButton(getContext(), true, this.resourcesProvider).setText(str).setUndoAction(runnable));
        return create(twoLineLottieLayout, 2750);
    }

    public Bulletin createUndoBulletin(CharSequence charSequence, Runnable runnable, Runnable runnable2) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(2);
        lottieLayout.setTimer();
        lottieLayout.setButton(new Bulletin.UndoButton(getContext(), true, this.resourcesProvider).setText(LocaleController.getString("Undo", C3632R.string.Undo)).setUndoAction(runnable).setDelayedAction(runnable2));
        return create(lottieLayout, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }

    public Bulletin createUsersBulletin(List<? extends TLObject> list, CharSequence charSequence) {
        return createUsersBulletin(list, charSequence, null, null);
    }

    public Bulletin createUsersBulletin(List<? extends TLObject> list, CharSequence charSequence, CharSequence charSequence2, UndoObject undoObject) {
        int i;
        Bulletin.UsersLayout usersLayout = new Bulletin.UsersLayout(getContext(), charSequence2 != null, this.resourcesProvider);
        if (list != null) {
            i = 0;
            for (int i2 = 0; i2 < list.size() && i < 3; i2++) {
                TLObject tLObject = list.get(i2);
                if (tLObject != null) {
                    i++;
                    usersLayout.avatarsImageView.setCount(i);
                    usersLayout.avatarsImageView.setObject(i - 1, UserConfig.selectedAccount, tLObject);
                }
            }
            if (list.size() == 1) {
                usersLayout.avatarsImageView.setTranslationX(AndroidUtilities.m107dp(4));
                usersLayout.avatarsImageView.setScaleX(1.2f);
                usersLayout.avatarsImageView.setScaleY(1.2f);
            } else {
                usersLayout.avatarsImageView.setScaleX(1.0f);
                usersLayout.avatarsImageView.setScaleY(1.0f);
            }
        } else {
            i = 0;
        }
        usersLayout.avatarsImageView.commitTransition(false);
        if (charSequence2 != null) {
            usersLayout.textView.setSingleLine(true);
            usersLayout.textView.setMaxLines(1);
            usersLayout.textView.setText(charSequence);
            usersLayout.subtitleView.setText(charSequence2);
            usersLayout.subtitleView.setSingleLine(true);
            usersLayout.subtitleView.setMaxLines(1);
            if (usersLayout.linearLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                int m107dp = AndroidUtilities.m107dp(70 - ((3 - i) * 12));
                if (i == 1) {
                    m107dp += AndroidUtilities.m107dp(4);
                }
                if (LocaleController.isRTL) {
                    ((ViewGroup.MarginLayoutParams) usersLayout.linearLayout.getLayoutParams()).rightMargin = m107dp;
                } else {
                    ((ViewGroup.MarginLayoutParams) usersLayout.linearLayout.getLayoutParams()).leftMargin = m107dp;
                }
            }
        } else {
            usersLayout.textView.setSingleLine(false);
            usersLayout.textView.setMaxLines(2);
            usersLayout.textView.setText(charSequence);
            if (usersLayout.textView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                int m107dp2 = AndroidUtilities.m107dp(70 - ((3 - i) * 12));
                if (i == 1) {
                    usersLayout.textView.setTranslationY(-AndroidUtilities.m107dp(1));
                    m107dp2 += AndroidUtilities.m107dp(4);
                }
                if (LocaleController.isRTL) {
                    ((ViewGroup.MarginLayoutParams) usersLayout.textView.getLayoutParams()).rightMargin = m107dp2;
                } else {
                    ((ViewGroup.MarginLayoutParams) usersLayout.textView.getLayoutParams()).leftMargin = m107dp2;
                }
            }
        }
        if (undoObject != null) {
            usersLayout.setButton(new Bulletin.UndoButton(getContext(), true, this.resourcesProvider).setText(LocaleController.getString("Undo", C3632R.string.Undo)).setUndoAction(undoObject.onUndo).setDelayedAction(undoObject.onAction));
        }
        return create(usersLayout, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }

    public Bulletin createChatsBulletin(List<TLObject> list, CharSequence charSequence, CharSequence charSequence2) {
        int i;
        Bulletin.UsersLayout usersLayout = new Bulletin.UsersLayout(getContext(), charSequence2 != null, this.resourcesProvider);
        if (list != null) {
            i = 0;
            for (int i2 = 0; i2 < list.size() && i < 3; i2++) {
                TLObject tLObject = list.get(i2);
                if (tLObject != null) {
                    i++;
                    usersLayout.avatarsImageView.setCount(i);
                    usersLayout.avatarsImageView.setObject(i - 1, UserConfig.selectedAccount, tLObject);
                }
            }
            if (list.size() == 1) {
                usersLayout.avatarsImageView.setTranslationX(AndroidUtilities.m107dp(4));
                usersLayout.avatarsImageView.setScaleX(1.2f);
                usersLayout.avatarsImageView.setScaleY(1.2f);
            } else {
                usersLayout.avatarsImageView.setScaleX(1.0f);
                usersLayout.avatarsImageView.setScaleY(1.0f);
            }
        } else {
            i = 0;
        }
        usersLayout.avatarsImageView.commitTransition(false);
        if (charSequence2 != null) {
            usersLayout.textView.setSingleLine(true);
            usersLayout.textView.setMaxLines(1);
            usersLayout.textView.setText(charSequence);
            usersLayout.subtitleView.setText(charSequence2);
            usersLayout.subtitleView.setSingleLine(true);
            usersLayout.subtitleView.setMaxLines(1);
            if (usersLayout.linearLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                int m107dp = AndroidUtilities.m107dp(74 - ((3 - i) * 12));
                if (LocaleController.isRTL) {
                    ((ViewGroup.MarginLayoutParams) usersLayout.linearLayout.getLayoutParams()).rightMargin = m107dp;
                } else {
                    ((ViewGroup.MarginLayoutParams) usersLayout.linearLayout.getLayoutParams()).leftMargin = m107dp;
                }
            }
        } else {
            usersLayout.textView.setSingleLine(false);
            usersLayout.textView.setMaxLines(2);
            usersLayout.textView.setText(charSequence);
            if (usersLayout.textView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                int m107dp2 = AndroidUtilities.m107dp(74 - ((3 - i) * 12));
                if (LocaleController.isRTL) {
                    ((ViewGroup.MarginLayoutParams) usersLayout.textView.getLayoutParams()).rightMargin = m107dp2;
                } else {
                    ((ViewGroup.MarginLayoutParams) usersLayout.textView.getLayoutParams()).leftMargin = m107dp2;
                }
            }
        }
        if (LocaleController.isRTL) {
            usersLayout.avatarsImageView.setTranslationX(AndroidUtilities.m107dp(32 - ((i - 1) * 12)));
        }
        return create(usersLayout, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }

    public Bulletin createUsersAddedBulletin(ArrayList<TLRPC$User> arrayList, TLRPC$Chat tLRPC$Chat) {
        SpannableStringBuilder spannableStringBuilder;
        if (arrayList == null || arrayList.size() == 0) {
            spannableStringBuilder = null;
        } else if (arrayList.size() == 1) {
            if (ChatObject.isChannelAndNotMegaGroup(tLRPC$Chat)) {
                int i = C3632R.string.HasBeenAddedToChannel;
                spannableStringBuilder = AndroidUtilities.replaceTags(LocaleController.formatString("HasBeenAddedToChannel", i, "**" + UserObject.getFirstName(arrayList.get(0)) + "**"));
            } else {
                int i2 = C3632R.string.HasBeenAddedToGroup;
                spannableStringBuilder = AndroidUtilities.replaceTags(LocaleController.formatString("HasBeenAddedToGroup", i2, "**" + UserObject.getFirstName(arrayList.get(0)) + "**"));
            }
        } else if (ChatObject.isChannelAndNotMegaGroup(tLRPC$Chat)) {
            spannableStringBuilder = AndroidUtilities.replaceTags(LocaleController.formatPluralString("AddedMembersToChannel", arrayList.size(), new Object[0]));
        } else {
            spannableStringBuilder = AndroidUtilities.replaceTags(LocaleController.formatPluralString("AddedSubscribersToChannel", arrayList.size(), new Object[0]));
        }
        return createUsersBulletin(arrayList, spannableStringBuilder);
    }

    public Bulletin createEmojiBulletin(TLRPC$Document tLRPC$Document, CharSequence charSequence) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        if (MessageObject.isTextColorEmoji(tLRPC$Document)) {
            lottieLayout.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_undo_infoColor), PorterDuff.Mode.SRC_IN));
        }
        lottieLayout.setAnimation(tLRPC$Document, 36, 36, new String[0]);
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setTextSize(1, 14.0f);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(3);
        return create(lottieLayout, 2750);
    }

    public Bulletin createStaticEmojiBulletin(TLRPC$Document tLRPC$Document, CharSequence charSequence) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        if (MessageObject.isTextColorEmoji(tLRPC$Document)) {
            lottieLayout.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_undo_infoColor), PorterDuff.Mode.SRC_IN));
        }
        lottieLayout.setAnimation(tLRPC$Document, 36, 36, new String[0]);
        lottieLayout.imageView.stopAnimation();
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setTextSize(1, 14.0f);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(3);
        return create(lottieLayout, 2750);
    }

    public Bulletin createEmojiBulletin(TLRPC$Document tLRPC$Document, CharSequence charSequence, CharSequence charSequence2, Runnable runnable) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        if (MessageObject.isTextColorEmoji(tLRPC$Document)) {
            lottieLayout.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_undo_infoColor), PorterDuff.Mode.SRC_IN));
        }
        lottieLayout.setAnimation(tLRPC$Document, 36, 36, new String[0]);
        if (lottieLayout.imageView.getImageReceiver() != null) {
            lottieLayout.imageView.getImageReceiver().setRoundRadius(AndroidUtilities.m107dp(4));
        }
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setTextSize(1, 14.0f);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(3);
        lottieLayout.setButton(new Bulletin.UndoButton(getContext(), true, this.resourcesProvider).setText(charSequence2).setUndoAction(runnable));
        return create(lottieLayout, 2750);
    }

    public Bulletin createEmojiLoadingBulletin(TLRPC$Document tLRPC$Document, CharSequence charSequence, CharSequence charSequence2, Runnable runnable) {
        Bulletin.LoadingLottieLayout loadingLottieLayout = new Bulletin.LoadingLottieLayout(getContext(), this.resourcesProvider);
        if (MessageObject.isTextColorEmoji(tLRPC$Document)) {
            loadingLottieLayout.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_undo_infoColor), PorterDuff.Mode.SRC_IN));
        }
        loadingLottieLayout.setAnimation(tLRPC$Document, 36, 36, new String[0]);
        loadingLottieLayout.textView.setTextSize(1, 14.0f);
        loadingLottieLayout.textView.setSingleLine(false);
        loadingLottieLayout.textView.setMaxLines(3);
        loadingLottieLayout.textLoadingView.setText(charSequence);
        loadingLottieLayout.textLoadingView.setTextSize(1, 14.0f);
        loadingLottieLayout.textLoadingView.setSingleLine(false);
        loadingLottieLayout.textLoadingView.setMaxLines(3);
        loadingLottieLayout.setButton(new Bulletin.UndoButton(getContext(), true, this.resourcesProvider).setText(charSequence2).setUndoAction(runnable));
        return create(loadingLottieLayout, 2750);
    }

    public Bulletin createContainsEmojiBulletin(TLRPC$Document tLRPC$Document, final int i, final Utilities.Callback<TLRPC$InputStickerSet> callback) {
        SpannableStringBuilder spannableStringBuilder;
        LoadingSpan loadingSpan;
        TLRPC$StickerSet tLRPC$StickerSet;
        final TLRPC$InputStickerSet inputStickerSet = MessageObject.getInputStickerSet(tLRPC$Document);
        if (inputStickerSet == null) {
            return null;
        }
        TLRPC$TL_messages_stickerSet stickerSet = MediaDataController.getInstance(UserConfig.selectedAccount).getStickerSet(inputStickerSet, true);
        if (stickerSet == null || (tLRPC$StickerSet = stickerSet.set) == null) {
            if (i == 1) {
                spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString("TopicContainsEmojiPackSingle", C3632R.string.TopicContainsEmojiPackSingle, "<{LOADING}>")));
            } else if (i == 2) {
                spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString("StoryContainsEmojiPackSingle", C3632R.string.StoryContainsEmojiPackSingle, "<{LOADING}>")));
            } else {
                spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString("MessageContainsEmojiPackSingle", C3632R.string.MessageContainsEmojiPackSingle, "<{LOADING}>")));
            }
            int indexOf = spannableStringBuilder.toString().indexOf("<{LOADING}>");
            if (indexOf >= 0) {
                loadingSpan = new LoadingSpan(null, AndroidUtilities.m107dp(100), AndroidUtilities.m107dp(2), this.resourcesProvider);
                spannableStringBuilder.setSpan(loadingSpan, indexOf, indexOf + 11, 33);
                int i2 = Theme.key_undo_infoColor;
                loadingSpan.setColors(ColorUtils.setAlphaComponent(Theme.getColor(i2, this.resourcesProvider), 32), ColorUtils.setAlphaComponent(Theme.getColor(i2, this.resourcesProvider), 72));
            } else {
                loadingSpan = null;
            }
            final long currentTimeMillis = System.currentTimeMillis();
            final Bulletin createEmojiLoadingBulletin = createEmojiLoadingBulletin(tLRPC$Document, spannableStringBuilder, LocaleController.getString("ViewAction", C3632R.string.ViewAction), new Runnable() { // from class: org.telegram.ui.Components.BulletinFactory$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(inputStickerSet);
                }
            });
            if (loadingSpan != null && (createEmojiLoadingBulletin.getLayout() instanceof Bulletin.LoadingLottieLayout)) {
                loadingSpan.setView(((Bulletin.LoadingLottieLayout) createEmojiLoadingBulletin.getLayout()).textLoadingView);
            }
            MediaDataController.getInstance(UserConfig.selectedAccount).getStickerSet(inputStickerSet, null, false, new Utilities.Callback() { // from class: org.telegram.ui.Components.BulletinFactory$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    BulletinFactory.lambda$createContainsEmojiBulletin$2(i, createEmojiLoadingBulletin, currentTimeMillis, (TLRPC$TL_messages_stickerSet) obj);
                }
            });
            return createEmojiLoadingBulletin;
        }
        return createEmojiBulletin(tLRPC$Document, i == 1 ? AndroidUtilities.replaceTags(LocaleController.formatString("TopicContainsEmojiPackSingle", C3632R.string.TopicContainsEmojiPackSingle, tLRPC$StickerSet.title)) : i == 2 ? AndroidUtilities.replaceTags(LocaleController.formatString("StoryContainsEmojiPackSingle", C3632R.string.StoryContainsEmojiPackSingle, tLRPC$StickerSet.title)) : AndroidUtilities.replaceTags(LocaleController.formatString("MessageContainsEmojiPackSingle", C3632R.string.MessageContainsEmojiPackSingle, tLRPC$StickerSet.title)), LocaleController.getString("ViewAction", C3632R.string.ViewAction), new Runnable() { // from class: org.telegram.ui.Components.BulletinFactory$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Utilities.Callback.this.run(inputStickerSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createContainsEmojiBulletin$2(int i, final Bulletin bulletin, long j, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        final CharSequence string;
        TLRPC$StickerSet tLRPC$StickerSet;
        if (tLRPC$TL_messages_stickerSet == null || (tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set) == null) {
            string = LocaleController.getString("AddEmojiNotFound", C3632R.string.AddEmojiNotFound);
        } else {
            string = i == 1 ? AndroidUtilities.replaceTags(LocaleController.formatString("TopicContainsEmojiPackSingle", C3632R.string.TopicContainsEmojiPackSingle, tLRPC$StickerSet.title)) : i == 2 ? AndroidUtilities.replaceTags(LocaleController.formatString("StoryContainsEmojiPackSingle", C3632R.string.StoryContainsEmojiPackSingle, tLRPC$StickerSet.title)) : AndroidUtilities.replaceTags(LocaleController.formatString("MessageContainsEmojiPackSingle", C3632R.string.MessageContainsEmojiPackSingle, tLRPC$StickerSet.title));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.BulletinFactory$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                Bulletin.this.onLoaded(string);
            }
        }, Math.max(1L, 750 - (System.currentTimeMillis() - j)));
    }

    public Bulletin createDownloadBulletin(FileType fileType) {
        return createDownloadBulletin(fileType, this.resourcesProvider);
    }

    public Bulletin createDownloadBulletin(FileType fileType, Theme.ResourcesProvider resourcesProvider) {
        return createDownloadBulletin(fileType, 1, resourcesProvider);
    }

    public Bulletin createDownloadBulletin(FileType fileType, int i, Theme.ResourcesProvider resourcesProvider) {
        return createDownloadBulletin(fileType, i, 0, 0, resourcesProvider);
    }

    public Bulletin createReportSent(Theme.ResourcesProvider resourcesProvider) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), resourcesProvider);
        lottieLayout.setAnimation(C3632R.raw.chats_infotip, new String[0]);
        lottieLayout.textView.setText(LocaleController.getString("ReportChatSent", C3632R.string.ReportChatSent));
        return create(lottieLayout, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public Bulletin createDownloadBulletin(FileType fileType, int i, int i2, int i3) {
        return createDownloadBulletin(fileType, i, i2, i3, null);
    }

    public Bulletin createDownloadBulletin(FileType fileType, int i, int i2, int i3, Theme.ResourcesProvider resourcesProvider) {
        Bulletin.LottieLayout lottieLayout;
        if (i2 != 0 && i3 != 0) {
            lottieLayout = new Bulletin.LottieLayout(getContext(), resourcesProvider, i2, i3);
        } else {
            lottieLayout = new Bulletin.LottieLayout(getContext(), resourcesProvider);
        }
        lottieLayout.setAnimation(fileType.icon.resId, fileType.icon.layers);
        lottieLayout.textView.setText(fileType.getText(i));
        if (fileType.icon.paddingBottom != 0) {
            lottieLayout.setIconPaddingBottom(fileType.icon.paddingBottom);
        }
        return create(lottieLayout, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public Bulletin createErrorBulletin(CharSequence charSequence) {
        return createErrorBulletin(charSequence, null);
    }

    public Bulletin createErrorBulletin(CharSequence charSequence, Theme.ResourcesProvider resourcesProvider) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), resourcesProvider);
        lottieLayout.setAnimation(C3632R.raw.chats_infotip, new String[0]);
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(2);
        return create(lottieLayout, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public Bulletin createSuccessBulletin(CharSequence charSequence) {
        return createSuccessBulletin(charSequence, null);
    }

    public Bulletin createSuccessBulletin(CharSequence charSequence, Theme.ResourcesProvider resourcesProvider) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), resourcesProvider);
        lottieLayout.setAnimation(C3632R.raw.contact_check, new String[0]);
        lottieLayout.textView.setText(charSequence);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(2);
        return create(lottieLayout, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public Bulletin createCaptionLimitBulletin(int i, final Runnable runnable) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), null);
        lottieLayout.setAnimation(C3632R.raw.caption_limit, new String[0]);
        String formatPluralString = LocaleController.formatPluralString("ChannelCaptionLimitPremiumPromo", i, new Object[0]);
        SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(AndroidUtilities.replaceTags(formatPluralString));
        int indexOf = formatPluralString.indexOf(42);
        int i2 = indexOf + 1;
        int indexOf2 = formatPluralString.indexOf(42, i2);
        valueOf.replace(indexOf, indexOf2 + 1, (CharSequence) formatPluralString.substring(i2, indexOf2));
        valueOf.setSpan(new ClickableSpan(this) { // from class: org.telegram.ui.Components.BulletinFactory.1
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                runnable.run();
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                textPaint.setUnderlineText(false);
            }
        }, indexOf, indexOf2 - 1, 33);
        lottieLayout.textView.setText(valueOf);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(3);
        return create(lottieLayout, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }

    public Bulletin createRestrictVoiceMessagesPremiumBulletin() {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), null);
        lottieLayout.setAnimation(C3632R.raw.voip_muted, new String[0]);
        String string = LocaleController.getString(C3632R.string.PrivacyVoiceMessagesPremiumOnly);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        int indexOf = string.indexOf(42);
        int lastIndexOf = string.lastIndexOf(42);
        if (indexOf >= 0) {
            spannableStringBuilder.replace(indexOf, lastIndexOf + 1, (CharSequence) string.substring(indexOf + 1, lastIndexOf));
            spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.BulletinFactory.2
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    BulletinFactory.this.fragment.presentFragment(new PremiumPreviewFragment("settings"));
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                }
            }, indexOf, lastIndexOf - 1, 33);
        }
        lottieLayout.textView.setText(spannableStringBuilder);
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(2);
        return create(lottieLayout, 2750);
    }

    public Bulletin createErrorBulletinSubtitle(CharSequence charSequence, CharSequence charSequence2, Theme.ResourcesProvider resourcesProvider) {
        Bulletin.TwoLineLottieLayout twoLineLottieLayout = new Bulletin.TwoLineLottieLayout(getContext(), resourcesProvider);
        twoLineLottieLayout.setAnimation(C3632R.raw.chats_infotip, new String[0]);
        twoLineLottieLayout.titleTextView.setText(charSequence);
        twoLineLottieLayout.subtitleTextView.setText(charSequence2);
        return create(twoLineLottieLayout, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public Bulletin createCopyLinkBulletin() {
        return createCopyLinkBulletin(false, this.resourcesProvider);
    }

    public Bulletin createCopyBulletin(String str) {
        return createCopyBulletin(str, null);
    }

    public Bulletin createCopyBulletin(String str, Theme.ResourcesProvider resourcesProvider) {
        if (!AndroidUtilities.shouldShowClipboardToast()) {
            return new Bulletin.EmptyBulletin();
        }
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), null);
        lottieLayout.setAnimation(C3632R.raw.copy, 36, 36, "NULL ROTATION", "Back", "Front");
        lottieLayout.textView.setText(str);
        return create(lottieLayout, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public Bulletin createCopyLinkBulletin(boolean z, Theme.ResourcesProvider resourcesProvider) {
        if (AndroidUtilities.shouldShowClipboardToast()) {
            if (z) {
                Bulletin.TwoLineLottieLayout twoLineLottieLayout = new Bulletin.TwoLineLottieLayout(getContext(), resourcesProvider);
                twoLineLottieLayout.setAnimation(C3632R.raw.voip_invite, 36, 36, "Wibe", "Circle");
                twoLineLottieLayout.titleTextView.setText(LocaleController.getString("LinkCopied", C3632R.string.LinkCopied));
                twoLineLottieLayout.subtitleTextView.setText(LocaleController.getString("LinkCopiedPrivateInfo", C3632R.string.LinkCopiedPrivateInfo));
                return create(twoLineLottieLayout, 2750);
            }
            Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), resourcesProvider);
            lottieLayout.setAnimation(C3632R.raw.voip_invite, 36, 36, "Wibe", "Circle");
            lottieLayout.textView.setText(LocaleController.getString("LinkCopied", C3632R.string.LinkCopied));
            return create(lottieLayout, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        }
        return new Bulletin.EmptyBulletin();
    }

    public Bulletin createCopyLinkBulletin(String str, Theme.ResourcesProvider resourcesProvider) {
        if (!AndroidUtilities.shouldShowClipboardToast()) {
            return new Bulletin.EmptyBulletin();
        }
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), resourcesProvider);
        lottieLayout.setAnimation(C3632R.raw.voip_invite, 36, 36, "Wibe", "Circle");
        lottieLayout.textView.setText(str);
        return create(lottieLayout, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    private Bulletin create(Bulletin.Layout layout, int i) {
        BaseFragment baseFragment = this.fragment;
        if (baseFragment != null) {
            return Bulletin.make(baseFragment, layout, i);
        }
        return Bulletin.make(this.containerLayout, layout, i);
    }

    private Context getContext() {
        Context context;
        BaseFragment baseFragment = this.fragment;
        if (baseFragment != null) {
            context = baseFragment.getParentActivity();
            if (context == null && this.fragment.getLayoutContainer() != null) {
                context = this.fragment.getLayoutContainer().getContext();
            }
        } else {
            FrameLayout frameLayout = this.containerLayout;
            context = frameLayout != null ? frameLayout.getContext() : null;
        }
        return context == null ? ApplicationLoader.applicationContext : context;
    }

    public static Bulletin createMuteBulletin(BaseFragment baseFragment, int i) {
        return createMuteBulletin(baseFragment, i, 0, (Theme.ResourcesProvider) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.telegram.p043ui.Components.Bulletin createMuteBulletin(org.telegram.p043ui.ActionBar.BaseFragment r6, int r7, int r8, org.telegram.p043ui.ActionBar.Theme.ResourcesProvider r9) {
        /*
            org.telegram.ui.Components.Bulletin$LottieLayout r0 = new org.telegram.ui.Components.Bulletin$LottieLayout
            android.app.Activity r1 = r6.getParentActivity()
            r0.<init>(r1, r9)
            java.lang.String r9 = "Hours"
            java.lang.String r1 = "NotificationsMutedForHint"
            r2 = 0
            r3 = 1
            if (r7 == 0) goto L6f
            if (r7 == r3) goto L5c
            r9 = 2
            if (r7 == r9) goto L49
            r9 = 3
            if (r7 == r9) goto L40
            r9 = 4
            if (r7 == r9) goto L35
            r9 = 5
            if (r7 != r9) goto L2f
            int r7 = org.telegram.messenger.C3632R.string.NotificationsMutedForHint
            java.lang.Object[] r9 = new java.lang.Object[r3]
            java.lang.String r8 = org.telegram.messenger.LocaleController.formatTTLString(r8)
            r9[r2] = r8
            java.lang.String r7 = org.telegram.messenger.LocaleController.formatString(r1, r7, r9)
            r8 = r3
            goto L81
        L2f:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            r6.<init>()
            throw r6
        L35:
            int r7 = org.telegram.messenger.C3632R.string.NotificationsUnmutedHint
            java.lang.String r8 = "NotificationsUnmutedHint"
            java.lang.String r7 = org.telegram.messenger.LocaleController.getString(r8, r7)
            r8 = r2
            r3 = r8
            goto L81
        L40:
            int r7 = org.telegram.messenger.C3632R.string.NotificationsMutedHint
            java.lang.String r8 = "NotificationsMutedHint"
            java.lang.String r7 = org.telegram.messenger.LocaleController.getString(r8, r7)
            goto L7f
        L49:
            int r7 = org.telegram.messenger.C3632R.string.NotificationsMutedForHint
            java.lang.Object[] r8 = new java.lang.Object[r3]
            java.lang.Object[] r4 = new java.lang.Object[r2]
            java.lang.String r5 = "Days"
            java.lang.String r9 = org.telegram.messenger.LocaleController.formatPluralString(r5, r9, r4)
            r8[r2] = r9
            java.lang.String r7 = org.telegram.messenger.LocaleController.formatString(r1, r7, r8)
            goto L7f
        L5c:
            int r7 = org.telegram.messenger.C3632R.string.NotificationsMutedForHint
            java.lang.Object[] r8 = new java.lang.Object[r3]
            r4 = 8
            java.lang.Object[] r5 = new java.lang.Object[r2]
            java.lang.String r9 = org.telegram.messenger.LocaleController.formatPluralString(r9, r4, r5)
            r8[r2] = r9
            java.lang.String r7 = org.telegram.messenger.LocaleController.formatString(r1, r7, r8)
            goto L7f
        L6f:
            int r7 = org.telegram.messenger.C3632R.string.NotificationsMutedForHint
            java.lang.Object[] r8 = new java.lang.Object[r3]
            java.lang.Object[] r4 = new java.lang.Object[r2]
            java.lang.String r9 = org.telegram.messenger.LocaleController.formatPluralString(r9, r3, r4)
            r8[r2] = r9
            java.lang.String r7 = org.telegram.messenger.LocaleController.formatString(r1, r7, r8)
        L7f:
            r8 = r3
            r3 = r2
        L81:
            if (r3 == 0) goto L8b
            int r8 = org.telegram.messenger.C3632R.raw.mute_for
            java.lang.String[] r9 = new java.lang.String[r2]
            r0.setAnimation(r8, r9)
            goto Lb2
        L8b:
            if (r8 == 0) goto La1
            int r8 = org.telegram.messenger.C3632R.raw.ic_mute
            java.lang.String r9 = "Body Main"
            java.lang.String r1 = "Body Top"
            java.lang.String r2 = "Line"
            java.lang.String r3 = "Curve Big"
            java.lang.String r4 = "Curve Small"
            java.lang.String[] r9 = new java.lang.String[]{r9, r1, r2, r3, r4}
            r0.setAnimation(r8, r9)
            goto Lb2
        La1:
            int r8 = org.telegram.messenger.C3632R.raw.ic_unmute
            java.lang.String r9 = "BODY"
            java.lang.String r1 = "Wibe Big"
            java.lang.String r2 = "Wibe Big 3"
            java.lang.String r3 = "Wibe Small"
            java.lang.String[] r9 = new java.lang.String[]{r9, r1, r2, r3}
            r0.setAnimation(r8, r9)
        Lb2:
            org.telegram.ui.Components.LinkSpanDrawable$LinksTextView r8 = r0.textView
            r8.setText(r7)
            r7 = 1500(0x5dc, float:2.102E-42)
            org.telegram.ui.Components.Bulletin r6 = org.telegram.p043ui.Components.Bulletin.make(r6, r0, r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.BulletinFactory.createMuteBulletin(org.telegram.ui.ActionBar.BaseFragment, int, int, org.telegram.ui.ActionBar.Theme$ResourcesProvider):org.telegram.ui.Components.Bulletin");
    }

    public static Bulletin createMuteBulletin(BaseFragment baseFragment, boolean z, int i, Theme.ResourcesProvider resourcesProvider) {
        String formatPluralString;
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(baseFragment.getParentActivity(), resourcesProvider);
        LinkSpanDrawable.LinksTextView linksTextView = lottieLayout.textView;
        if (z) {
            formatPluralString = LocaleController.formatPluralString("NotificationsMutedHintChats", i, new Object[0]);
        } else {
            formatPluralString = LocaleController.formatPluralString("NotificationsUnmutedHintChats", i, new Object[0]);
        }
        linksTextView.setText(formatPluralString);
        if (z) {
            lottieLayout.setAnimation(C3632R.raw.ic_mute, "Body Main", "Body Top", "Line", "Curve Big", "Curve Small");
        } else {
            lottieLayout.setAnimation(C3632R.raw.ic_unmute, "BODY", "Wibe Big", "Wibe Big 3", "Wibe Small");
        }
        return Bulletin.make(baseFragment, lottieLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public static Bulletin createMuteBulletin(BaseFragment baseFragment, boolean z, Theme.ResourcesProvider resourcesProvider) {
        return createMuteBulletin(baseFragment, z ? 3 : 4, 0, resourcesProvider);
    }

    public static Bulletin createUnpinAllMessagesBulletin(BaseFragment baseFragment, int i, boolean z, Runnable runnable, Runnable runnable2, Theme.ResourcesProvider resourcesProvider) {
        if (baseFragment.getParentActivity() == null) {
            if (runnable2 != null) {
                runnable2.run();
                return null;
            }
            return null;
        }
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(baseFragment.getParentActivity(), resourcesProvider);
        lottieLayout.setAnimation(C3632R.raw.ic_unpin, 28, 28, "Pin", "Line");
        lottieLayout.textView.setText(LocaleController.formatPluralString("MessagesUnpinned", i, new Object[0]));
        if (z) {
            lottieLayout.textView.setText(LocaleController.getInternalString(C3632R.string.pinned_messages_pin_panel_hidden_bulletin));
            lottieLayout.textView.setSingleLine(false);
            lottieLayout.textView.setMaxLines(2);
        }
        lottieLayout.setButton(new Bulletin.UndoButton(baseFragment.getParentActivity(), true, resourcesProvider).setUndoAction(runnable).setDelayedAction(runnable2));
        return Bulletin.make(baseFragment, lottieLayout, (int) DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }

    public static Bulletin createSaveToGalleryBulletin(BaseFragment baseFragment, boolean z, Theme.ResourcesProvider resourcesProvider) {
        return m65of(baseFragment).createDownloadBulletin(z ? FileType.VIDEO : FileType.PHOTO, resourcesProvider);
    }

    public static Bulletin createSaveToGalleryBulletin(FrameLayout frameLayout, boolean z, Theme.ResourcesProvider resourcesProvider) {
        return m66of(frameLayout, resourcesProvider).createDownloadBulletin(z ? FileType.VIDEO : FileType.PHOTO, resourcesProvider);
    }

    public static Bulletin createSaveToGalleryBulletin(FrameLayout frameLayout, boolean z, int i, int i2) {
        return m66of(frameLayout, null).createDownloadBulletin(z ? FileType.VIDEO : FileType.PHOTO, 1, i, i2);
    }

    public static Bulletin createSaveToGalleryBulletin(FrameLayout frameLayout, int i, boolean z, int i2, int i3) {
        return m66of(frameLayout, null).createDownloadBulletin(z ? i > 1 ? FileType.VIDEOS : FileType.VIDEO : i > 1 ? FileType.PHOTOS : FileType.PHOTO, i, i2, i3);
    }

    public static Bulletin createPromoteToAdminBulletin(BaseFragment baseFragment, String str) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        lottieLayout.setAnimation(C3632R.raw.ic_admin, "Shield");
        lottieLayout.textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("UserSetAsAdminHint", C3632R.string.UserSetAsAdminHint, str)));
        return Bulletin.make(baseFragment, lottieLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public static Bulletin createAddedAsAdminBulletin(BaseFragment baseFragment, String str) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        lottieLayout.setAnimation(C3632R.raw.ic_admin, "Shield");
        lottieLayout.textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("UserAddedAsAdminHint", C3632R.string.UserAddedAsAdminHint, str)));
        return Bulletin.make(baseFragment, lottieLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.telegram.p043ui.Components.Bulletin createInviteSentBulletin(android.content.Context r4, android.widget.FrameLayout r5, int r6, long r7, int r9, int r10, int r11) {
        /*
            org.telegram.ui.Components.Bulletin$LottieLayout r9 = new org.telegram.ui.Components.Bulletin$LottieLayout
            r0 = 0
            r9.<init>(r4, r0, r10, r11)
            r4 = 300(0x12c, float:4.2E-43)
            r10 = 1
            r11 = 30
            r0 = 0
            if (r6 > r10) goto L82
            int r6 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.UserConfig r6 = org.telegram.messenger.UserConfig.getInstance(r6)
            long r1 = r6.clientUserId
            int r6 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r6 != 0) goto L30
            int r4 = org.telegram.messenger.C3632R.string.InvLinkToSavedMessages
            java.lang.String r6 = "InvLinkToSavedMessages"
            java.lang.String r4 = org.telegram.messenger.LocaleController.getString(r6, r4)
            android.text.SpannableStringBuilder r4 = org.telegram.messenger.AndroidUtilities.replaceTags(r4)
            int r6 = org.telegram.messenger.C3632R.raw.saved_messages
            java.lang.String[] r7 = new java.lang.String[r0]
            r9.setAnimation(r6, r11, r11, r7)
            r6 = -1
            goto La4
        L30:
            boolean r6 = org.telegram.messenger.DialogObject.isChatDialog(r7)
            if (r6 == 0) goto L58
            int r6 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MessagesController r6 = org.telegram.messenger.MessagesController.getInstance(r6)
            long r7 = -r7
            java.lang.Long r7 = java.lang.Long.valueOf(r7)
            org.telegram.tgnet.TLRPC$Chat r6 = r6.getChat(r7)
            int r7 = org.telegram.messenger.C3632R.string.InvLinkToGroup
            java.lang.Object[] r8 = new java.lang.Object[r10]
            java.lang.String r6 = r6.title
            r8[r0] = r6
            java.lang.String r6 = "InvLinkToGroup"
            java.lang.String r6 = org.telegram.messenger.LocaleController.formatString(r6, r7, r8)
            android.text.SpannableStringBuilder r6 = org.telegram.messenger.AndroidUtilities.replaceTags(r6)
            goto L7a
        L58:
            int r6 = org.telegram.messenger.UserConfig.selectedAccount
            org.telegram.messenger.MessagesController r6 = org.telegram.messenger.MessagesController.getInstance(r6)
            java.lang.Long r7 = java.lang.Long.valueOf(r7)
            org.telegram.tgnet.TLRPC$User r6 = r6.getUser(r7)
            int r7 = org.telegram.messenger.C3632R.string.InvLinkToUser
            java.lang.Object[] r8 = new java.lang.Object[r10]
            java.lang.String r6 = org.telegram.messenger.UserObject.getFirstName(r6)
            r8[r0] = r6
            java.lang.String r6 = "InvLinkToUser"
            java.lang.String r6 = org.telegram.messenger.LocaleController.formatString(r6, r7, r8)
            android.text.SpannableStringBuilder r6 = org.telegram.messenger.AndroidUtilities.replaceTags(r6)
        L7a:
            int r7 = org.telegram.messenger.C3632R.raw.forward
            java.lang.String[] r8 = new java.lang.String[r0]
            r9.setAnimation(r7, r11, r11, r8)
            goto La1
        L82:
            int r7 = org.telegram.messenger.C3632R.string.InvLinkToChats
            java.lang.Object[] r8 = new java.lang.Object[r10]
            java.lang.Object[] r10 = new java.lang.Object[r0]
            java.lang.String r1 = "Chats"
            java.lang.String r6 = org.telegram.messenger.LocaleController.formatPluralString(r1, r6, r10)
            r8[r0] = r6
            java.lang.String r6 = "InvLinkToChats"
            java.lang.String r6 = org.telegram.messenger.LocaleController.formatString(r6, r7, r8)
            android.text.SpannableStringBuilder r6 = org.telegram.messenger.AndroidUtilities.replaceTags(r6)
            int r7 = org.telegram.messenger.C3632R.raw.forward
            java.lang.String[] r8 = new java.lang.String[r0]
            r9.setAnimation(r7, r11, r11, r8)
        La1:
            r3 = r6
            r6 = r4
            r4 = r3
        La4:
            org.telegram.ui.Components.LinkSpanDrawable$LinksTextView r7 = r9.textView
            r7.setText(r4)
            if (r6 <= 0) goto Lb4
            org.telegram.ui.Components.BulletinFactory$$ExternalSyntheticLambda3 r4 = new org.telegram.ui.Components.BulletinFactory$$ExternalSyntheticLambda3
            r4.<init>()
            long r6 = (long) r6
            r9.postDelayed(r4, r6)
        Lb4:
            r4 = 1500(0x5dc, float:2.102E-42)
            org.telegram.ui.Components.Bulletin r4 = org.telegram.p043ui.Components.Bulletin.make(r5, r9, r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.BulletinFactory.createInviteSentBulletin(android.content.Context, android.widget.FrameLayout, int, long, int, int, int):org.telegram.ui.Components.Bulletin");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.telegram.p043ui.Components.Bulletin createForwardedBulletin(android.content.Context r5, android.widget.FrameLayout r6, int r7, long r8, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.BulletinFactory.createForwardedBulletin(android.content.Context, android.widget.FrameLayout, int, long, int, int, int):org.telegram.ui.Components.Bulletin");
    }

    public static Bulletin createRemoveFromChatBulletin(BaseFragment baseFragment, TLRPC$User tLRPC$User, String str) {
        String str2;
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        lottieLayout.setAnimation(C3632R.raw.ic_ban, "Hand");
        if (tLRPC$User.deleted) {
            str2 = LocaleController.formatString("HiddenName", C3632R.string.HiddenName, new Object[0]);
        } else {
            str2 = tLRPC$User.first_name;
        }
        lottieLayout.textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("UserRemovedFromChatHint", C3632R.string.UserRemovedFromChatHint, str2, str)));
        return Bulletin.make(baseFragment, lottieLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public static Bulletin createBanBulletin(BaseFragment baseFragment, boolean z) {
        String string;
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        if (z) {
            lottieLayout.setAnimation(C3632R.raw.ic_ban, "Hand");
            string = LocaleController.getString("UserBlocked", C3632R.string.UserBlocked);
        } else {
            lottieLayout.setAnimation(C3632R.raw.ic_unban, "Main", "Finger 1", "Finger 2", "Finger 3", "Finger 4");
            string = LocaleController.getString("UserUnblocked", C3632R.string.UserUnblocked);
        }
        lottieLayout.textView.setText(AndroidUtilities.replaceTags(string));
        return Bulletin.make(baseFragment, lottieLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public Bulletin createBanBulletin(boolean z) {
        String string;
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), this.resourcesProvider);
        if (z) {
            lottieLayout.setAnimation(C3632R.raw.ic_ban, "Hand");
            string = LocaleController.getString("UserBlocked", C3632R.string.UserBlocked);
        } else {
            lottieLayout.setAnimation(C3632R.raw.ic_unban, "Main", "Finger 1", "Finger 2", "Finger 3", "Finger 4");
            string = LocaleController.getString("UserUnblocked", C3632R.string.UserUnblocked);
        }
        lottieLayout.textView.setText(AndroidUtilities.replaceTags(string));
        return create(lottieLayout, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }

    public static Bulletin createCopyLinkBulletin(BaseFragment baseFragment) {
        return m65of(baseFragment).createCopyLinkBulletin();
    }

    public static Bulletin createCopyLinkBulletin(FrameLayout frameLayout) {
        return m66of(frameLayout, null).createCopyLinkBulletin();
    }

    public static Bulletin createPinMessageBulletin(BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, int i) {
        return createPinMessageBulletin(baseFragment, true, null, null, resourcesProvider, i);
    }

    public static Bulletin createUnpinMessageBulletin(BaseFragment baseFragment, Runnable runnable, Runnable runnable2, Theme.ResourcesProvider resourcesProvider) {
        return createPinMessageBulletin(baseFragment, false, runnable, runnable2, resourcesProvider, 1);
    }

    private static Bulletin createPinMessageBulletin(BaseFragment baseFragment, boolean z, Runnable runnable, Runnable runnable2, Theme.ResourcesProvider resourcesProvider, int i) {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(baseFragment.getParentActivity(), resourcesProvider);
        lottieLayout.setAnimation(z ? C3632R.raw.ic_pin : C3632R.raw.ic_unpin, 28, 28, "Pin", "Line");
        if (z && i > 1) {
            lottieLayout.textView.setText(LocaleController.formatPluralStringInternal(C3632R.string.plural_messages_pinned, i));
        } else {
            lottieLayout.textView.setText(LocaleController.getString(z ? "MessagePinnedHint" : "MessageUnpinnedHint", z ? C3632R.string.MessagePinnedHint : C3632R.string.MessageUnpinnedHint));
        }
        if (!z) {
            lottieLayout.setButton(new Bulletin.UndoButton(baseFragment.getParentActivity(), true, resourcesProvider).setUndoAction(runnable).setDelayedAction(runnable2));
        }
        return Bulletin.make(baseFragment, lottieLayout, z ? ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED : DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }

    public static Bulletin createSoundEnabledBulletin(BaseFragment baseFragment, int i, Theme.ResourcesProvider resourcesProvider) {
        String string;
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(baseFragment.getParentActivity(), resourcesProvider);
        boolean z = true;
        if (i == 0) {
            string = LocaleController.getString("SoundOnHint", C3632R.string.SoundOnHint);
        } else if (i == 1) {
            string = LocaleController.getString("SoundOffHint", C3632R.string.SoundOffHint);
            z = false;
        } else {
            throw new IllegalArgumentException();
        }
        if (z) {
            lottieLayout.setAnimation(C3632R.raw.sound_on, new String[0]);
        } else {
            lottieLayout.setAnimation(C3632R.raw.sound_off, new String[0]);
        }
        lottieLayout.textView.setText(string);
        return Bulletin.make(baseFragment, lottieLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
    }
}
