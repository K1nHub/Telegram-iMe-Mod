package org.telegram.p043ui.Stories;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.C0483C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedColor;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.GradientTools;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messageMediaUnsupported;
import org.telegram.tgnet.TLRPC$TL_peerColor;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.p042tl.TL_stories$PeerStories;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
import org.telegram.tgnet.p042tl.TL_stories$StoryViews;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_getPeerStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_storyViews;
/* renamed from: org.telegram.ui.Stories.StoriesUtilities */
/* loaded from: classes6.dex */
public class StoriesUtilities {
    public static GradientTools closeFriendsGradientTools;
    public static GradientTools errorGradientTools;
    public static Drawable expiredStoryDrawable;
    public static int grayLastColor;
    public static Paint grayPaint;
    public static int storyCellGrayLastColor;
    public static GradientTools[] storiesGradientTools = new GradientTools[2];
    public static Paint[] storyCellGreyPaint = new Paint[2];
    private static final RectF rectTmp = new RectF();
    static int debugState = 0;
    static Runnable debugRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities.1
        @Override // java.lang.Runnable
        public void run() {
            int abs = Math.abs(Utilities.random.nextInt() % 3);
            StoriesUtilities.debugState = abs;
            if (abs == 2) {
                StoriesUtilities.debugState = 1;
            } else {
                StoriesUtilities.debugState = 2;
            }
            NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, 0);
            AndroidUtilities.runOnUIThread(StoriesUtilities.debugRunnable, 1000L);
            LaunchActivity.getLastFragment().getFragmentView();
        }
    };

    public static void drawAvatarWithStory(long j, Canvas canvas, ImageReceiver imageReceiver, AvatarStoryParams avatarStoryParams) {
        drawAvatarWithStory(j, canvas, imageReceiver, UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId() != j && MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController().hasStories(j), avatarStoryParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:185:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x03ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void drawAvatarWithStory(long r26, android.graphics.Canvas r28, org.telegram.messenger.ImageReceiver r29, boolean r30, org.telegram.p043ui.Stories.StoriesUtilities.AvatarStoryParams r31) {
        /*
            Method dump skipped, instructions count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesUtilities.drawAvatarWithStory(long, android.graphics.Canvas, org.telegram.messenger.ImageReceiver, boolean, org.telegram.ui.Stories.StoriesUtilities$AvatarStoryParams):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x01aa A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c9 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void drawSegmentsInternal(android.graphics.Canvas r23, org.telegram.p043ui.Stories.StoriesController r24, org.telegram.messenger.ImageReceiver r25, org.telegram.p043ui.Stories.StoriesUtilities.AvatarStoryParams r26, android.graphics.Paint r27, android.graphics.Paint r28, android.graphics.Paint r29) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesUtilities.drawSegmentsInternal(android.graphics.Canvas, org.telegram.ui.Stories.StoriesController, org.telegram.messenger.ImageReceiver, org.telegram.ui.Stories.StoriesUtilities$AvatarStoryParams, android.graphics.Paint, android.graphics.Paint, android.graphics.Paint):void");
    }

    public static int getPredictiveUnreadState(StoriesController storiesController, long j) {
        TLRPC$Chat chat;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return 0;
        }
        if (i > 0) {
            if (storiesController.isContactsAvatarsEnabled()) {
                TLRPC$User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j));
                if (j == UserConfig.getInstance(UserConfig.selectedAccount).clientUserId || user == null || user.stories_max_id <= 0 || user.stories_unavailable) {
                    return 0;
                }
                return user.stories_max_id > storiesController.dialogIdToMaxReadId.get(j, 0) ? 1 : 2;
            }
            return 0;
        } else if (storiesController.isChannelsAvatarsEnabled() && (chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-j))) != null && chat.stories_max_id > 0 && !chat.stories_unavailable) {
            return chat.stories_max_id > storiesController.dialogIdToMaxReadId.get(j, 0) ? 1 : 2;
        } else {
            return 0;
        }
    }

    private static void drawProgress(Canvas canvas, AvatarStoryParams avatarStoryParams, View view, Paint paint) {
        avatarStoryParams.updateProgressParams();
        view.invalidate();
        if (avatarStoryParams.inc) {
            canvas.drawArc(rectTmp, avatarStoryParams.globalAngle, avatarStoryParams.sweepAngle * 360.0f, false, paint);
        } else {
            canvas.drawArc(rectTmp, avatarStoryParams.globalAngle + 360.0f, avatarStoryParams.sweepAngle * (-360.0f), false, paint);
        }
        for (int i = 0; i < 16; i++) {
            float f = (i * 22.5f) + 10.0f;
            canvas.drawArc(rectTmp, avatarStoryParams.globalAngle + f, ((22.5f + f) - 10.0f) - f, false, paint);
        }
    }

    private static void checkStoryCellGrayPaint(boolean z, Theme.ResourcesProvider resourcesProvider) {
        Paint[] paintArr = storyCellGreyPaint;
        if (paintArr[z ? 1 : 0] == null) {
            paintArr[z ? 1 : 0] = new Paint(1);
            storyCellGreyPaint[z ? 1 : 0].setStyle(Paint.Style.STROKE);
            storyCellGreyPaint[z ? 1 : 0].setStrokeWidth(AndroidUtilities.dpf2(1.3f));
            storyCellGreyPaint[z ? 1 : 0].setStrokeCap(Paint.Cap.ROUND);
        }
        int color = Theme.getColor(!z ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived, resourcesProvider);
        if (storyCellGrayLastColor != color) {
            storyCellGrayLastColor = color;
            float computePerceivedBrightness = AndroidUtilities.computePerceivedBrightness(color);
            if (!(computePerceivedBrightness < 0.721f)) {
                storyCellGreyPaint[z ? 1 : 0].setColor(ColorUtils.blendARGB(color, -16777216, 0.2f));
            } else if (computePerceivedBrightness < 0.25f) {
                storyCellGreyPaint[z ? 1 : 0].setColor(ColorUtils.blendARGB(color, -1, 0.2f));
            } else {
                storyCellGreyPaint[z ? 1 : 0].setColor(ColorUtils.blendARGB(color, -1, 0.44f));
            }
        }
    }

    private static void checkGrayPaint(Theme.ResourcesProvider resourcesProvider) {
        if (grayPaint == null) {
            Paint paint = new Paint(1);
            grayPaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            grayPaint.setStrokeWidth(AndroidUtilities.dpf2(1.3f));
            grayPaint.setStrokeCap(Paint.Cap.ROUND);
        }
        int color = Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider);
        if (grayLastColor != color) {
            grayLastColor = color;
            float computePerceivedBrightness = AndroidUtilities.computePerceivedBrightness(color);
            if (!(computePerceivedBrightness < 0.721f)) {
                grayPaint.setColor(ColorUtils.blendARGB(color, -16777216, 0.2f));
            } else if (computePerceivedBrightness < 0.25f) {
                grayPaint.setColor(ColorUtils.blendARGB(color, -1, 0.2f));
            } else {
                grayPaint.setColor(ColorUtils.blendARGB(color, -1, 0.44f));
            }
        }
    }

    private static void drawCircleInternal(Canvas canvas, View view, AvatarStoryParams avatarStoryParams, Paint paint) {
        float f = avatarStoryParams.progressToArc;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            RectF rectF = rectTmp;
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, paint);
            return;
        }
        canvas.drawArc(rectTmp, (f / 2.0f) + 360.0f, 360.0f - f, false, paint);
    }

    private static void drawSegment(Canvas canvas, RectF rectF, Paint paint, float f, float f2, AvatarStoryParams avatarStoryParams) {
        boolean z = avatarStoryParams.isFirst;
        if (!z && !avatarStoryParams.isLast) {
            if (f < 90.0f) {
                float f3 = avatarStoryParams.progressToArc;
                drawArcExcludeArc(canvas, rectF, paint, f, f2, (-f3) / 2.0f, f3 / 2.0f);
                return;
            }
            float f4 = avatarStoryParams.progressToArc;
            drawArcExcludeArc(canvas, rectF, paint, f, f2, ((-f4) / 2.0f) + 180.0f, (f4 / 2.0f) + 180.0f);
        } else if (avatarStoryParams.isLast) {
            float f5 = avatarStoryParams.progressToArc;
            drawArcExcludeArc(canvas, rectF, paint, f, f2, ((-f5) / 2.0f) + 180.0f, (f5 / 2.0f) + 180.0f);
        } else if (z) {
            float f6 = avatarStoryParams.progressToArc;
            drawArcExcludeArc(canvas, rectF, paint, f, f2, (-f6) / 2.0f, f6 / 2.0f);
        } else {
            canvas.drawArc(rectF, f, f2 - f, false, paint);
        }
    }

    private static int getInset(int i, int i2) {
        if (i == 3) {
            i = i2;
        }
        if (i == 2) {
            return AndroidUtilities.m107dp(3);
        }
        if (i == 1) {
            return AndroidUtilities.m107dp(4);
        }
        return 0;
    }

    public static Paint getUnreadCirclePaint(ImageReceiver imageReceiver, boolean z) {
        checkStoriesGradientTools(z);
        storiesGradientTools[z ? 1 : 0].setBounds(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageX2(), imageReceiver.getImageY2());
        return storiesGradientTools[z ? 1 : 0].paint;
    }

    private static void checkStoriesGradientTools(boolean z) {
        GradientTools[] gradientToolsArr = storiesGradientTools;
        if (gradientToolsArr[z ? 1 : 0] == null) {
            gradientToolsArr[z ? 1 : 0] = new GradientTools();
            GradientTools[] gradientToolsArr2 = storiesGradientTools;
            gradientToolsArr2[z ? 1 : 0].isDiagonal = true;
            gradientToolsArr2[z ? 1 : 0].isRotate = true;
            if (z) {
                gradientToolsArr2[z ? 1 : 0].setColors(Theme.getColor(Theme.key_stories_circle_dialog1), Theme.getColor(Theme.key_stories_circle_dialog2));
            } else {
                gradientToolsArr2[z ? 1 : 0].setColors(Theme.getColor(Theme.key_stories_circle1), Theme.getColor(Theme.key_stories_circle2));
            }
            storiesGradientTools[z ? 1 : 0].paint.setStrokeWidth(AndroidUtilities.dpf2(2.3f));
            storiesGradientTools[z ? 1 : 0].paint.setStyle(Paint.Style.STROKE);
            storiesGradientTools[z ? 1 : 0].paint.setStrokeCap(Paint.Cap.ROUND);
        }
    }

    public static void updateColors() {
        GradientTools gradientTools = closeFriendsGradientTools;
        if (gradientTools != null) {
            gradientTools.setColors(Theme.getColor(Theme.key_stories_circle_closeFriends1), Theme.getColor(Theme.key_stories_circle_closeFriends2));
        }
        GradientTools[] gradientToolsArr = storiesGradientTools;
        if (gradientToolsArr[0] != null) {
            gradientToolsArr[0].setColors(Theme.getColor(Theme.key_stories_circle_dialog1), Theme.getColor(Theme.key_stories_circle_dialog2));
        }
        GradientTools[] gradientToolsArr2 = storiesGradientTools;
        if (gradientToolsArr2[1] != null) {
            gradientToolsArr2[1].setColors(Theme.getColor(Theme.key_stories_circle1), Theme.getColor(Theme.key_stories_circle2));
        }
        if (errorGradientTools != null) {
            int color = Theme.getColor(Theme.key_color_orange);
            int color2 = Theme.getColor(Theme.key_text_RedBold);
            errorGradientTools.setColors(ColorUtils.blendARGB(color, color2, 0.25f), color2);
        }
    }

    public static Paint getCloseFriendsPaint(ImageReceiver imageReceiver) {
        if (closeFriendsGradientTools == null) {
            GradientTools gradientTools = new GradientTools();
            closeFriendsGradientTools = gradientTools;
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            gradientTools.setColors(Theme.getColor(Theme.key_stories_circle_closeFriends1), Theme.getColor(Theme.key_stories_circle_closeFriends2));
            closeFriendsGradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(2.3f));
            closeFriendsGradientTools.paint.setStyle(Paint.Style.STROKE);
            closeFriendsGradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
        }
        closeFriendsGradientTools.setBounds(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageX2(), imageReceiver.getImageY2());
        return closeFriendsGradientTools.paint;
    }

    public static Paint getErrorPaint(ImageReceiver imageReceiver) {
        if (errorGradientTools == null) {
            GradientTools gradientTools = new GradientTools();
            errorGradientTools = gradientTools;
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            int color = Theme.getColor(Theme.key_color_orange);
            int color2 = Theme.getColor(Theme.key_text_RedBold);
            errorGradientTools.setColors(ColorUtils.blendARGB(color, color2, 0.25f), color2);
            errorGradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(2.3f));
            errorGradientTools.paint.setStyle(Paint.Style.STROKE);
            errorGradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
        }
        errorGradientTools.setBounds(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageX2(), imageReceiver.getImageY2());
        return errorGradientTools.paint;
    }

    public static Paint getErrorPaint(RectF rectF) {
        if (errorGradientTools == null) {
            GradientTools gradientTools = new GradientTools();
            errorGradientTools = gradientTools;
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            int color = Theme.getColor(Theme.key_color_orange);
            int color2 = Theme.getColor(Theme.key_text_RedBold);
            errorGradientTools.setColors(ColorUtils.blendARGB(color, color2, 0.25f), color2);
            errorGradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(2.3f));
            errorGradientTools.paint.setStyle(Paint.Style.STROKE);
            errorGradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
        }
        errorGradientTools.setBounds(rectF.left, rectF.top, rectF.right, rectF.bottom);
        return errorGradientTools.paint;
    }

    public static void setStoryMiniImage(ImageReceiver imageReceiver, TL_stories$StoryItem tL_stories$StoryItem) {
        ArrayList<TLRPC$PhotoSize> arrayList;
        if (tL_stories$StoryItem == null) {
            return;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tL_stories$StoryItem.media;
        TLRPC$Document tLRPC$Document = tLRPC$MessageMedia.document;
        if (tLRPC$Document != null) {
            imageReceiver.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 1000), tL_stories$StoryItem.media.document), "100_100", null, null, ImageLoader.createStripedBitmap(tL_stories$StoryItem.media.document.thumbs), 0L, null, tL_stories$StoryItem, 0);
            return;
        }
        TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia != null ? tLRPC$MessageMedia.photo : null;
        if (tLRPC$Photo != null && (arrayList = tLRPC$Photo.sizes) != null) {
            imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, 1000), tLRPC$Photo), "100_100", null, null, ImageLoader.createStripedBitmap(tLRPC$Photo.sizes), 0L, null, tL_stories$StoryItem, 0);
        } else {
            imageReceiver.clearImage();
        }
    }

    public static void setImage(ImageReceiver imageReceiver, TL_stories$StoryItem tL_stories$StoryItem) {
        setImage(imageReceiver, tL_stories$StoryItem, "320_320");
    }

    public static void setImage(ImageReceiver imageReceiver, TL_stories$StoryItem tL_stories$StoryItem, String str) {
        ArrayList<TLRPC$PhotoSize> arrayList;
        TLRPC$Document tLRPC$Document;
        if (tL_stories$StoryItem == null) {
            return;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tL_stories$StoryItem.media;
        if (tLRPC$MessageMedia != null && (tLRPC$Document = tLRPC$MessageMedia.document) != null) {
            imageReceiver.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, Integer.MAX_VALUE), tL_stories$StoryItem.media.document), str, null, null, ImageLoader.createStripedBitmap(tL_stories$StoryItem.media.document.thumbs), 0L, null, tL_stories$StoryItem, 0);
            imageReceiver.addDecorator(new StoryWidgetsImageDecorator(tL_stories$StoryItem));
            return;
        }
        TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia != null ? tLRPC$MessageMedia.photo : null;
        if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaUnsupported) {
            Bitmap createBitmap = Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
            createBitmap.eraseColor(ColorUtils.blendARGB(-16777216, -1, 0.2f));
            imageReceiver.setImageBitmap(createBitmap);
            imageReceiver.addDecorator(new StoryWidgetsImageDecorator(tL_stories$StoryItem));
        } else if (tLRPC$Photo != null && (arrayList = tLRPC$Photo.sizes) != null) {
            imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, Integer.MAX_VALUE), tLRPC$Photo), str, null, null, ImageLoader.createStripedBitmap(tLRPC$Photo.sizes), 0L, null, tL_stories$StoryItem, 0);
            imageReceiver.addDecorator(new StoryWidgetsImageDecorator(tL_stories$StoryItem));
        } else {
            imageReceiver.clearImage();
        }
    }

    public static void setImage(ImageReceiver imageReceiver, StoriesController.UploadingStory uploadingStory) {
        if (uploadingStory.entry.isVideo) {
            imageReceiver.setImage(ImageLocation.getForPath(uploadingStory.firstFramePath), "320_180", null, null, null, 0L, null, null, 0);
        } else {
            imageReceiver.setImage(ImageLocation.getForPath(uploadingStory.path), "320_180", null, null, null, 0L, null, null, 0);
        }
    }

    public static void setThumbImage(ImageReceiver imageReceiver, TL_stories$StoryItem tL_stories$StoryItem, int i, int i2) {
        ArrayList<TLRPC$PhotoSize> arrayList;
        TLRPC$Document tLRPC$Document;
        TLRPC$MessageMedia tLRPC$MessageMedia = tL_stories$StoryItem.media;
        if (tLRPC$MessageMedia != null && (tLRPC$Document = tLRPC$MessageMedia.document) != null) {
            ImageLocation forDocument = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, AndroidUtilities.m107dp(Math.max(i, i2)), false, null, true), tL_stories$StoryItem.media.document);
            imageReceiver.setImage(forDocument, i + "_" + i2, null, null, ImageLoader.createStripedBitmap(tL_stories$StoryItem.media.document.thumbs), 0L, null, tL_stories$StoryItem, 0);
            return;
        }
        TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia != null ? tLRPC$MessageMedia.photo : null;
        if (tLRPC$Photo != null && (arrayList = tLRPC$Photo.sizes) != null) {
            ImageLocation forPhoto = ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.m107dp(Math.max(i, i2)), false, null, true), tLRPC$Photo);
            imageReceiver.setImage(null, null, forPhoto, i + "_" + i2, null, null, ImageLoader.createStripedBitmap(tLRPC$Photo.sizes), 0L, null, tL_stories$StoryItem, 0);
            return;
        }
        imageReceiver.clearImage();
    }

    public static Drawable getExpiredStoryDrawable() {
        if (expiredStoryDrawable == null) {
            Bitmap createBitmap = Bitmap.createBitmap(360, 180, Bitmap.Config.ARGB_8888);
            createBitmap.eraseColor(-7829368);
            Canvas canvas = new Canvas(createBitmap);
            TextPaint textPaint = new TextPaint(1);
            textPaint.setTextSize(15.0f);
            textPaint.setTextAlign(Paint.Align.CENTER);
            textPaint.setColor(ColorUtils.setAlphaComponent(-16777216, 100));
            canvas.drawText("expired", 180.0f, 86.0f, textPaint);
            canvas.drawText("story", 180.0f, 106.0f, textPaint);
            expiredStoryDrawable = new BitmapDrawable(createBitmap);
        }
        return expiredStoryDrawable;
    }

    public static CharSequence getUploadingStr(TextView textView, boolean z, boolean z2) {
        String string;
        if (z2) {
            string = LocaleController.getString("StoryEditing", C3632R.string.StoryEditing);
        } else {
            string = LocaleController.getString("UploadingStory", C3632R.string.UploadingStory);
        }
        if (string.indexOf("…") > 0) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(string);
            UploadingDotsSpannable uploadingDotsSpannable = new UploadingDotsSpannable();
            valueOf.setSpan(uploadingDotsSpannable, valueOf.length() - 1, valueOf.length(), 0);
            uploadingDotsSpannable.setParent(textView, z);
            return valueOf;
        }
        return string;
    }

    public static void applyUploadingStr(SimpleTextView simpleTextView, boolean z, boolean z2) {
        String string;
        if (z2) {
            string = LocaleController.getString("StoryEditing", C3632R.string.StoryEditing);
        } else {
            string = LocaleController.getString("UploadingStory", C3632R.string.UploadingStory);
        }
        if (string.indexOf("…") > 0) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(string);
            UploadingDotsSpannable uploadingDotsSpannable = new UploadingDotsSpannable();
            valueOf.setSpan(uploadingDotsSpannable, valueOf.length() - 1, valueOf.length(), 0);
            uploadingDotsSpannable.setParent(simpleTextView, z);
            simpleTextView.setText(valueOf);
            return;
        }
        simpleTextView.setText(string);
    }

    public static CharSequence createExpiredStoryString() {
        return createExpiredStoryString(false, "ExpiredStory", C3632R.string.ExpiredStory, new Object[0]);
    }

    public static CharSequence createExpiredStoryString(boolean z, String str, int i, Object... objArr) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "d ").append((CharSequence) LocaleController.formatString(str, i, objArr));
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C3632R.C3634drawable.msg_mini_bomb);
        if (z) {
            coloredImageSpan.setScale(0.8f, 0.8f);
        } else {
            coloredImageSpan.setTopOffset(-1);
        }
        spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 0);
        return spannableStringBuilder;
    }

    public static CharSequence createReplyStoryString() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "d ").append((CharSequence) LocaleController.getString("Story", C3632R.string.Story));
        spannableStringBuilder.setSpan(new ColoredImageSpan(C3632R.C3634drawable.msg_mini_replystory2), 0, 1, 0);
        return spannableStringBuilder;
    }

    public static boolean hasExpiredViews(TL_stories$StoryItem tL_stories$StoryItem) {
        return tL_stories$StoryItem != null && ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime() > tL_stories$StoryItem.expire_date + 86400;
    }

    public static void applyViewedUser(TL_stories$StoryItem tL_stories$StoryItem, TLRPC$User tLRPC$User) {
        if (tLRPC$User == null || tL_stories$StoryItem.dialogId != UserConfig.getInstance(UserConfig.selectedAccount).clientUserId || hasExpiredViews(tL_stories$StoryItem)) {
            return;
        }
        if (tL_stories$StoryItem.views == null) {
            tL_stories$StoryItem.views = new TL_stories$TL_storyViews();
        }
        TL_stories$StoryViews tL_stories$StoryViews = tL_stories$StoryItem.views;
        if (tL_stories$StoryViews.views_count == 0) {
            tL_stories$StoryViews.views_count = 1;
            tL_stories$StoryViews.recent_viewers.add(Long.valueOf(tLRPC$User.f1751id));
        }
    }

    public static void drawArcExcludeArc(Canvas canvas, RectF rectF, Paint paint, float f, float f2, float f3, float f4) {
        boolean z;
        float f5 = f2 - f;
        if (f >= f3 || f2 >= f3 + f5) {
            z = false;
        } else {
            z = true;
            canvas.drawArc(rectF, f, Math.min(f2, f3) - f, false, paint);
        }
        float max = Math.max(f, f4);
        float min = Math.min(f2, f3 + 360.0f);
        if (min >= max) {
            canvas.drawArc(rectF, max, min - max, false, paint);
        } else if (z) {
        } else {
            if (f <= f3 || f2 >= f4) {
                canvas.drawArc(rectF, f, f5, false, paint);
            }
        }
    }

    public static boolean isExpired(int i, TL_stories$StoryItem tL_stories$StoryItem) {
        return ConnectionsManager.getInstance(i).getCurrentTime() > tL_stories$StoryItem.expire_date;
    }

    public static String getStoryImageFilter() {
        int max = (int) (Math.max(AndroidUtilities.getRealScreenSize().x, AndroidUtilities.getRealScreenSize().y) / AndroidUtilities.density);
        return max + "_" + max;
    }

    /* renamed from: org.telegram.ui.Stories.StoriesUtilities$EnsureStoryFileLoadedObject */
    /* loaded from: classes6.dex */
    public static class EnsureStoryFileLoadedObject {
        private boolean cancelled;
        long dialogId;
        ImageReceiver imageReceiver;
        public Runnable runnable;
        StoriesController storiesController;

        private EnsureStoryFileLoadedObject(StoriesController storiesController, long j) {
            this.cancelled = false;
            this.dialogId = j;
            this.storiesController = storiesController;
        }

        public void cancel() {
            this.cancelled = true;
            this.storiesController.setLoading(this.dialogId, false);
        }
    }

    public static EnsureStoryFileLoadedObject ensureStoryFileLoaded(TL_stories$PeerStories tL_stories$PeerStories, final Runnable runnable) {
        TL_stories$StoryItem tL_stories$StoryItem;
        ArrayList<TLRPC$PhotoSize> arrayList;
        ArrayList<TLRPC$PhotoSize> arrayList2;
        TLRPC$Document tLRPC$Document;
        int lastIndexOf;
        if (tL_stories$PeerStories == null || tL_stories$PeerStories.stories.isEmpty() || DialogObject.getPeerDialogId(tL_stories$PeerStories.peer) == UserConfig.getInstance(UserConfig.selectedAccount).clientUserId) {
            runnable.run();
            return null;
        }
        StoriesController storiesController = MessagesController.getInstance(UserConfig.selectedAccount).storiesController;
        int i = storiesController.dialogIdToMaxReadId.get(DialogObject.getPeerDialogId(tL_stories$PeerStories.peer));
        int i2 = 0;
        while (true) {
            if (i2 >= tL_stories$PeerStories.stories.size()) {
                tL_stories$StoryItem = null;
                break;
            } else if (tL_stories$PeerStories.stories.get(i2).f1763id > i) {
                tL_stories$StoryItem = tL_stories$PeerStories.stories.get(i2);
                break;
            } else {
                i2++;
            }
        }
        if (tL_stories$StoryItem == null) {
            tL_stories$StoryItem = tL_stories$PeerStories.stories.get(0);
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tL_stories$StoryItem.media;
        if (tLRPC$MessageMedia != null && tLRPC$MessageMedia.document != null) {
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tL_stories$StoryItem.media.document, "", false);
            if (pathToAttach != null && pathToAttach.exists()) {
                runnable.run();
                return null;
            }
            File pathToAttach2 = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tL_stories$StoryItem.media.document, "", true);
            if (pathToAttach2 != null) {
                try {
                    if (pathToAttach2.getName().lastIndexOf(".") > 0) {
                        File file = new File(pathToAttach2.getParentFile(), pathToAttach2.getName().substring(0, lastIndexOf) + ".temp");
                        if (file.exists() && file.length() > 0) {
                            runnable.run();
                            return null;
                        }
                    }
                } catch (Exception unused) {
                }
            }
        } else {
            TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia != null ? tLRPC$MessageMedia.photo : null;
            if (tLRPC$Photo != null && (arrayList = tLRPC$Photo.sizes) != null) {
                File pathToAttach3 = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(FileLoader.getClosestPhotoSizeWithSize(arrayList, Integer.MAX_VALUE), "", false);
                if (pathToAttach3 != null && pathToAttach3.exists()) {
                    runnable.run();
                    return null;
                }
            } else {
                runnable.run();
                return null;
            }
        }
        final EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = new EnsureStoryFileLoadedObject(storiesController, DialogObject.getPeerDialogId(tL_stories$PeerStories.peer));
        ensureStoryFileLoadedObject.runnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                StoriesUtilities.lambda$ensureStoryFileLoaded$0(StoriesUtilities.EnsureStoryFileLoadedObject.this, runnable);
            }
        };
        final Runnable[] runnableArr = {new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                StoriesUtilities.lambda$ensureStoryFileLoaded$1(runnableArr, ensureStoryFileLoadedObject);
            }
        }};
        AndroidUtilities.runOnUIThread(runnableArr[0], C0483C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        ImageReceiver imageReceiver = new ImageReceiver() { // from class: org.telegram.ui.Stories.StoriesUtilities.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.ImageReceiver
            public boolean setImageBitmapByKey(Drawable drawable, String str, int i3, boolean z, int i4) {
                boolean imageBitmapByKey = super.setImageBitmapByKey(drawable, str, i3, z, i4);
                Runnable[] runnableArr2 = runnableArr;
                if (runnableArr2[0] != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnableArr2[0]);
                    ensureStoryFileLoadedObject.runnable.run();
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        onDetachedFromWindow();
                    }
                });
                return imageBitmapByKey;
            }
        };
        ensureStoryFileLoadedObject.imageReceiver = imageReceiver;
        imageReceiver.setAllowLoadingOnAttachedOnly(true);
        ensureStoryFileLoadedObject.imageReceiver.onAttachedToWindow();
        String storyImageFilter = getStoryImageFilter();
        TLRPC$MessageMedia tLRPC$MessageMedia2 = tL_stories$StoryItem.media;
        if (tLRPC$MessageMedia2 != null && (tLRPC$Document = tLRPC$MessageMedia2.document) != null) {
            ensureStoryFileLoadedObject.imageReceiver.setImage(ImageLocation.getForDocument(tLRPC$Document), storyImageFilter + "_pframe", null, null, null, 0L, null, tL_stories$StoryItem, 0);
            return ensureStoryFileLoadedObject;
        }
        TLRPC$Photo tLRPC$Photo2 = tLRPC$MessageMedia2 != null ? tLRPC$MessageMedia2.photo : null;
        if (tLRPC$Photo2 != null && (arrayList2 = tLRPC$Photo2.sizes) != null) {
            ensureStoryFileLoadedObject.imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList2, Integer.MAX_VALUE), tLRPC$Photo2), storyImageFilter, null, null, null, 0L, null, tL_stories$StoryItem, 0);
            return ensureStoryFileLoadedObject;
        }
        ensureStoryFileLoadedObject.runnable.run();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$ensureStoryFileLoaded$0(EnsureStoryFileLoadedObject ensureStoryFileLoadedObject, Runnable runnable) {
        if (ensureStoryFileLoadedObject.cancelled) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$ensureStoryFileLoaded$1(Runnable[] runnableArr, EnsureStoryFileLoadedObject ensureStoryFileLoadedObject) {
        runnableArr[0] = null;
        ensureStoryFileLoadedObject.runnable.run();
        ImageReceiver imageReceiver = ensureStoryFileLoadedObject.imageReceiver;
        if (imageReceiver != null) {
            imageReceiver.onDetachedFromWindow();
        }
    }

    /* renamed from: org.telegram.ui.Stories.StoriesUtilities$AvatarStoryParams */
    /* loaded from: classes6.dex */
    public static class AvatarStoryParams {
        public boolean allowLongress;
        public float alpha;
        public boolean animate;
        public int animateFromUnreadState;
        ButtonBounce buttonBounce;
        public View child;
        public long crossfadeToDialog;
        public float crossfadeToDialogProgress;
        public int currentState;
        private long dialogId;
        public boolean drawHiddenStoriesAsSegments;
        public boolean drawInside;
        public boolean drawSegments;
        public boolean forceAnimateProgressToSegments;
        public int forceState;
        float globalAngle;
        public int globalState;
        boolean inc;
        public boolean isArchive;
        public boolean isFirst;
        public boolean isLast;
        private final boolean isStoryCell;
        Runnable longPressRunnable;
        UserStoriesLoadOperation operation;
        public RectF originalAvatarRect;
        boolean pressed;
        public int prevState;
        public float progressToArc;
        public float progressToProgressSegments;
        public float progressToSate;
        public float progressToSegments;
        public Theme.ResourcesProvider resourcesProvider;
        public boolean showProgress;
        float startX;
        float startY;
        public int storyId;
        public TL_stories$StoryItem storyItem;
        float sweepAngle;
        public int unreadState;

        public void onLongPress() {
        }

        public AvatarStoryParams(boolean z) {
            this(z, null);
        }

        public AvatarStoryParams(boolean z, Theme.ResourcesProvider resourcesProvider) {
            this.drawSegments = true;
            this.animate = true;
            this.progressToSegments = 1.0f;
            this.progressToArc = BitmapDescriptorFactory.HUE_RED;
            this.alpha = 1.0f;
            this.progressToSate = 1.0f;
            this.showProgress = false;
            this.originalAvatarRect = new RectF();
            this.allowLongress = false;
            this.isStoryCell = z;
            this.resourcesProvider = resourcesProvider;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateProgressParams() {
            if (this.inc) {
                float f = this.sweepAngle + 0.016f;
                this.sweepAngle = f;
                if (f >= 1.0f) {
                    this.sweepAngle = 1.0f;
                    this.inc = false;
                }
            } else {
                float f2 = this.sweepAngle - 0.016f;
                this.sweepAngle = f2;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    this.sweepAngle = BitmapDescriptorFactory.HUE_RED;
                    this.inc = true;
                }
            }
            this.globalAngle += 1.152f;
        }

        public boolean checkOnTouchEvent(MotionEvent motionEvent, final View view) {
            TLRPC$User tLRPC$User;
            this.child = view;
            StoriesController storiesController = MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController();
            boolean z = false;
            if (motionEvent.getAction() == 0 && this.originalAvatarRect.contains(motionEvent.getX(), motionEvent.getY())) {
                TLRPC$Chat tLRPC$Chat = null;
                if (this.dialogId > 0) {
                    tLRPC$User = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(this.dialogId));
                } else {
                    tLRPC$Chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-this.dialogId));
                    tLRPC$User = null;
                }
                if ((storiesController.isContactsAvatarsEnabled() || this.dialogId <= 0) && (this.dialogId >= 0 || storiesController.isChannelsAvatarsEnabled())) {
                    if (this.drawHiddenStoriesAsSegments) {
                        z = storiesController.hasHiddenStories();
                    } else if (this.dialogId <= 0 ? MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController().hasStories(this.dialogId) || (tLRPC$Chat != null && !tLRPC$Chat.stories_unavailable && tLRPC$Chat.stories_max_id > 0) : MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController().hasStories(this.dialogId) || (tLRPC$User != null && !tLRPC$User.stories_unavailable && tLRPC$User.stories_max_id > 0)) {
                        z = true;
                    }
                }
                if (this.dialogId != UserConfig.getInstance(UserConfig.selectedAccount).clientUserId && z) {
                    ButtonBounce buttonBounce = this.buttonBounce;
                    if (buttonBounce == null) {
                        this.buttonBounce = new ButtonBounce(view, 1.5f, 5.0f);
                    } else {
                        buttonBounce.setView(view);
                    }
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    this.buttonBounce.setPressed(true);
                    this.pressed = true;
                    this.startX = motionEvent.getX();
                    this.startY = motionEvent.getY();
                    if (this.allowLongress) {
                        Runnable runnable = this.longPressRunnable;
                        if (runnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(runnable);
                        }
                        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$AvatarStoryParams$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                StoriesUtilities.AvatarStoryParams.this.lambda$checkOnTouchEvent$0(view);
                            }
                        };
                        this.longPressRunnable = runnable2;
                        AndroidUtilities.runOnUIThread(runnable2, ViewConfiguration.getLongPressTimeout());
                    }
                }
            } else if (motionEvent.getAction() == 2 && this.pressed) {
                if (Math.abs(this.startX - motionEvent.getX()) > AndroidUtilities.touchSlop || Math.abs(this.startY - motionEvent.getY()) > AndroidUtilities.touchSlop) {
                    ButtonBounce buttonBounce2 = this.buttonBounce;
                    if (buttonBounce2 != null) {
                        buttonBounce2.setView(view);
                        this.buttonBounce.setPressed(false);
                    }
                    Runnable runnable3 = this.longPressRunnable;
                    if (runnable3 != null) {
                        AndroidUtilities.cancelRunOnUIThread(runnable3);
                    }
                    view.getParent().requestDisallowInterceptTouchEvent(false);
                    this.pressed = false;
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                ButtonBounce buttonBounce3 = this.buttonBounce;
                if (buttonBounce3 != null) {
                    buttonBounce3.setView(view);
                    this.buttonBounce.setPressed(false);
                }
                if (this.pressed && motionEvent.getAction() == 1) {
                    processOpenStory(view);
                }
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).requestDisallowInterceptTouchEvent(false);
                }
                this.pressed = false;
                Runnable runnable4 = this.longPressRunnable;
                if (runnable4 != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable4);
                }
            }
            return this.pressed;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkOnTouchEvent$0(View view) {
            view.performHapticFeedback(0);
            ButtonBounce buttonBounce = this.buttonBounce;
            if (buttonBounce != null) {
                buttonBounce.setPressed(false);
            }
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).requestDisallowInterceptTouchEvent(false);
            }
            this.pressed = false;
            onLongPress();
        }

        private void processOpenStory(View view) {
            MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
            StoriesController storiesController = messagesController.getStoriesController();
            if (this.drawHiddenStoriesAsSegments) {
                openStory(0L, null);
            } else if (this.dialogId != UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId()) {
                if (storiesController.hasStories(this.dialogId)) {
                    openStory(this.dialogId, null);
                    return;
                }
                long j = this.dialogId;
                if (j > 0) {
                    TLRPC$User user = messagesController.getUser(Long.valueOf(j));
                    if (user == null || user.stories_unavailable || user.stories_max_id <= 0) {
                        return;
                    }
                    new UserStoriesLoadOperation().load(this.dialogId, view, this);
                    return;
                }
                TLRPC$Chat chat = messagesController.getChat(Long.valueOf(-j));
                if (chat == null || chat.stories_unavailable || chat.stories_max_id <= 0) {
                    return;
                }
                new UserStoriesLoadOperation().load(this.dialogId, view, this);
            }
        }

        public void openStory(long j, Runnable runnable) {
            BaseFragment lastFragment = LaunchActivity.getLastFragment();
            if (lastFragment == null || this.child == null) {
                return;
            }
            lastFragment.getOrCreateStoryViewer().doOnAnimationReady(runnable);
            ViewParent parent = this.child.getParent();
            lastFragment.getOrCreateStoryViewer().open(lastFragment.getContext(), j, parent instanceof RecyclerView ? StoriesListPlaceProvider.m52of((RecyclerListView) parent) : null);
        }

        public float getScale() {
            ButtonBounce buttonBounce = this.buttonBounce;
            if (buttonBounce == null) {
                return 1.0f;
            }
            return buttonBounce.getScale(0.08f);
        }

        public void reset() {
            UserStoriesLoadOperation userStoriesLoadOperation = this.operation;
            if (userStoriesLoadOperation != null) {
                userStoriesLoadOperation.cancel();
                this.operation = null;
            }
            this.buttonBounce = null;
            this.pressed = false;
        }

        public void onDetachFromWindow() {
            reset();
        }
    }

    /* renamed from: org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation */
    /* loaded from: classes6.dex */
    public static class UserStoriesLoadOperation {
        private int currentAccount;
        int reqId;

        public UserStoriesLoadOperation() {
            ConnectionsManager.generateClassGuid();
        }

        void load(final long j, final View view, final AvatarStoryParams avatarStoryParams) {
            int i = UserConfig.selectedAccount;
            this.currentAccount = i;
            final MessagesController messagesController = MessagesController.getInstance(i);
            messagesController.getStoriesController().setLoading(j, true);
            view.invalidate();
            TL_stories$TL_stories_getPeerStories tL_stories$TL_stories_getPeerStories = new TL_stories$TL_stories_getPeerStories();
            tL_stories$TL_stories_getPeerStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_getPeerStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesUtilities.UserStoriesLoadOperation.this.lambda$load$3(j, view, avatarStoryParams, messagesController, tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$3(final long j, final View view, final AvatarStoryParams avatarStoryParams, final MessagesController messagesController, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesUtilities.UserStoriesLoadOperation.this.lambda$load$2(tLObject, j, view, avatarStoryParams, messagesController);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$load$2(org.telegram.tgnet.TLObject r10, final long r11, final android.view.View r13, final org.telegram.p043ui.Stories.StoriesUtilities.AvatarStoryParams r14, org.telegram.messenger.MessagesController r15) {
            /*
                r9 = this;
                r0 = 1
                r1 = 0
                if (r10 == 0) goto L42
                org.telegram.tgnet.tl.TL_stories$TL_stories_peerStories r10 = (org.telegram.tgnet.p042tl.TL_stories$TL_stories_peerStories) r10
                int r2 = r9.currentAccount
                org.telegram.messenger.MessagesController r2 = org.telegram.messenger.MessagesController.getInstance(r2)
                java.util.ArrayList<org.telegram.tgnet.TLRPC$User> r3 = r10.users
                r2.putUsers(r3, r1)
                int r2 = r9.currentAccount
                org.telegram.messenger.MessagesController r2 = org.telegram.messenger.MessagesController.getInstance(r2)
                java.util.ArrayList<org.telegram.tgnet.TLRPC$Chat> r3 = r10.chats
                r2.putChats(r3, r1)
                org.telegram.tgnet.tl.TL_stories$PeerStories r10 = r10.stories
                java.util.ArrayList<org.telegram.tgnet.tl.TL_stories$StoryItem> r2 = r10.stories
                boolean r2 = r2.isEmpty()
                if (r2 != 0) goto L42
                int r2 = r9.currentAccount
                org.telegram.messenger.MessagesController r2 = org.telegram.messenger.MessagesController.getInstance(r2)
                org.telegram.ui.Stories.StoriesController r2 = r2.getStoriesController()
                r2.putStories(r11, r10)
                org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda1 r2 = new org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda1
                r3 = r2
                r4 = r9
                r5 = r13
                r6 = r11
                r8 = r14
                r3.<init>()
                org.telegram.p043ui.Stories.StoriesUtilities.ensureStoryFileLoaded(r10, r2)
                r10 = r1
                goto L43
            L42:
                r10 = r0
            L43:
                r2 = 0
                int r14 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
                r2 = 0
                if (r14 <= 0) goto L66
                java.lang.Long r3 = java.lang.Long.valueOf(r11)
                org.telegram.tgnet.TLRPC$User r3 = r15.getUser(r3)
                if (r3 == 0) goto L66
                r3.stories_unavailable = r0
                int r4 = r9.currentAccount
                org.telegram.messenger.MessagesStorage r4 = org.telegram.messenger.MessagesStorage.getInstance(r4)
                java.util.List r5 = java.util.Collections.singletonList(r3)
                r4.putUsersAndChats(r5, r2, r1, r0)
                r15.putUser(r3, r1)
            L66:
                if (r14 >= 0) goto L85
                long r3 = -r11
                java.lang.Long r14 = java.lang.Long.valueOf(r3)
                org.telegram.tgnet.TLRPC$Chat r14 = r15.getChat(r14)
                if (r14 == 0) goto L85
                r14.stories_unavailable = r0
                int r3 = r9.currentAccount
                org.telegram.messenger.MessagesStorage r3 = org.telegram.messenger.MessagesStorage.getInstance(r3)
                java.util.List r4 = java.util.Collections.singletonList(r14)
                r3.putUsersAndChats(r2, r4, r1, r0)
                r15.putChat(r14, r1)
            L85:
                if (r10 == 0) goto L97
                r13.invalidate()
                int r10 = r9.currentAccount
                org.telegram.messenger.MessagesController r10 = org.telegram.messenger.MessagesController.getInstance(r10)
                org.telegram.ui.Stories.StoriesController r10 = r10.getStoriesController()
                r10.setLoading(r11, r1)
            L97:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesUtilities.UserStoriesLoadOperation.lambda$load$2(org.telegram.tgnet.TLObject, long, android.view.View, org.telegram.ui.Stories.StoriesUtilities$AvatarStoryParams, org.telegram.messenger.MessagesController):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$1(final View view, final long j, AvatarStoryParams avatarStoryParams) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesUtilities.UserStoriesLoadOperation.this.lambda$load$0(view, j);
                }
            }, 500L);
            avatarStoryParams.openStory(j, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(View view, long j) {
            view.invalidate();
            MessagesController.getInstance(this.currentAccount).getStoriesController().setLoading(j, false);
        }

        void cancel() {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, false);
        }
    }

    /* renamed from: org.telegram.ui.Stories.StoriesUtilities$StoryGradientTools */
    /* loaded from: classes6.dex */
    public static class StoryGradientTools {
        private final AnimatedColor animatedColor1;
        private final AnimatedColor animatedColor2;
        private int color1;
        private int color2;
        public final int currentAccount;
        private final Runnable invalidate;
        private final boolean isDialogCell;
        private final GradientTools tools;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public StoryGradientTools(final View view, boolean z) {
            this(new Runnable() { // from class: org.telegram.ui.Stories.StoriesUtilities$StoryGradientTools$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    view.invalidate();
                }
            }, z);
            Objects.requireNonNull(view);
        }

        public StoryGradientTools(Runnable runnable, boolean z) {
            this.currentAccount = UserConfig.selectedAccount;
            this.invalidate = runnable;
            this.isDialogCell = z;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.animatedColor1 = new AnimatedColor(runnable, 350L, cubicBezierInterpolator);
            this.animatedColor2 = new AnimatedColor(runnable, 350L, cubicBezierInterpolator);
            GradientTools gradientTools = new GradientTools();
            this.tools = gradientTools;
            gradientTools.isDiagonal = true;
            gradientTools.isRotate = true;
            resetColors(false);
            gradientTools.paint.setStrokeWidth(AndroidUtilities.dpf2(2.3f));
            gradientTools.paint.setStyle(Paint.Style.STROKE);
            gradientTools.paint.setStrokeCap(Paint.Cap.ROUND);
        }

        public void setUser(TLRPC$User tLRPC$User, boolean z) {
            TLRPC$TL_peerColor tLRPC$TL_peerColor;
            setColorId((tLRPC$User == null || (tLRPC$TL_peerColor = tLRPC$User.profile_color) == null) ? -1 : tLRPC$TL_peerColor.color, z);
        }

        public void setChat(TLRPC$Chat tLRPC$Chat, boolean z) {
            setColorId(-1, z);
        }

        public void setColorId(int i, boolean z) {
            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).profilePeerColors;
            MessagesController.PeerColor color = peerColors == null ? null : peerColors.getColor(i);
            if (color != null) {
                setColors(color.getStoryColor1(Theme.isCurrentThemeDark()), color.getStoryColor2(Theme.isCurrentThemeDark()), z);
            } else {
                resetColors(z);
            }
        }

        private void resetColors(boolean z) {
            if (this.isDialogCell) {
                setColors(Theme.getColor(Theme.key_stories_circle_dialog1), Theme.getColor(Theme.key_stories_circle_dialog2), z);
            } else {
                setColors(Theme.getColor(Theme.key_stories_circle1), Theme.getColor(Theme.key_stories_circle2), z);
            }
        }

        private void setColors(int i, int i2, boolean z) {
            this.color1 = i;
            this.color2 = i2;
            if (!z) {
                this.animatedColor1.set(i, true);
                this.animatedColor2.set(i2, true);
            }
            Runnable runnable = this.invalidate;
            if (runnable != null) {
                runnable.run();
            }
        }

        public Paint getPaint(RectF rectF) {
            this.tools.setColors(this.animatedColor1.set(this.color1), this.animatedColor2.set(this.color2));
            this.tools.setBounds(rectF.left, rectF.top, rectF.right, rectF.bottom);
            return this.tools.paint;
        }
    }
}
