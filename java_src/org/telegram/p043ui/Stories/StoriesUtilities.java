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
import com.google.android.exoplayer2.C0479C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
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
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$StoryItem;
import org.telegram.tgnet.TLRPC$StoryViews;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messageMediaUnsupported;
import org.telegram.tgnet.TLRPC$TL_stories_getUserStories;
import org.telegram.tgnet.TLRPC$TL_storyViews;
import org.telegram.tgnet.TLRPC$TL_userStories;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Stories.StoriesUtilities */
/* loaded from: classes7.dex */
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

    public static void drawAvatarWithStory(long j, Canvas canvas, ImageReceiver imageReceiver, boolean z, AvatarStoryParams avatarStoryParams) {
        int predictiveUnreadState;
        int i;
        int i2;
        int i3;
        float f;
        float f2;
        Paint paint;
        Paint paint2;
        Paint paint3;
        float dpf2;
        float f3;
        float m72dp;
        Paint paint4;
        Paint paint5;
        Paint paint6;
        float dpf22;
        float f4;
        float m72dp2;
        GradientTools gradientTools;
        float m72dp3;
        StoriesController storiesController = MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController();
        boolean z2 = avatarStoryParams.animate;
        if (avatarStoryParams.dialogId != j) {
            avatarStoryParams.dialogId = j;
            avatarStoryParams.reset();
            z2 = false;
        }
        boolean isLoading = storiesController.isLoading(j);
        boolean hasHiddenStories = avatarStoryParams.drawHiddenStoriesAsSegments ? storiesController.hasHiddenStories() : z;
        if (avatarStoryParams.storyItem != null) {
            storiesController.getUnreadState(j, avatarStoryParams.storyId);
            isLoading = false;
        }
        if (!isLoading) {
            if (hasHiddenStories) {
                if (avatarStoryParams.drawSegments) {
                    predictiveUnreadState = 2;
                } else {
                    predictiveUnreadState = storiesController.getUnreadState(j, avatarStoryParams.storyId);
                    i = predictiveUnreadState == 0 ? 2 : 1;
                }
            } else {
                predictiveUnreadState = getPredictiveUnreadState(storiesController, j);
            }
            i = predictiveUnreadState;
        } else if (storiesController.hasStories(j)) {
            z2 = false;
            i = 3;
            predictiveUnreadState = 2;
        } else {
            predictiveUnreadState = getPredictiveUnreadState(storiesController, j);
            z2 = false;
            i = 3;
        }
        int i4 = avatarStoryParams.currentState;
        if (i4 != i) {
            if (i4 == 3) {
                z2 = true;
            }
            if (i == 3) {
                avatarStoryParams.animateFromUnreadState = predictiveUnreadState;
                avatarStoryParams.progressToProgressSegments = BitmapDescriptorFactory.HUE_RED;
            }
            if (z2) {
                avatarStoryParams.prevState = i4;
                avatarStoryParams.currentState = i;
                avatarStoryParams.progressToSate = BitmapDescriptorFactory.HUE_RED;
            } else {
                avatarStoryParams.currentState = i;
                avatarStoryParams.progressToSate = 1.0f;
            }
        }
        avatarStoryParams.unreadState = predictiveUnreadState;
        ButtonBounce buttonBounce = avatarStoryParams.buttonBounce;
        float scale = buttonBounce != null ? buttonBounce.getScale(0.08f) : 1.0f;
        if (avatarStoryParams.showProgress != isLoading && isLoading) {
            avatarStoryParams.sweepAngle = 1.0f;
            avatarStoryParams.inc = false;
        }
        avatarStoryParams.showProgress = isLoading;
        if ((!avatarStoryParams.isStoryCell && !storiesController.isAvatarsEnabled()) || (avatarStoryParams.currentState == 0 && avatarStoryParams.progressToSate == 1.0f)) {
            imageReceiver.setImageCoords(avatarStoryParams.originalAvatarRect);
            imageReceiver.draw(canvas);
            return;
        }
        if (scale != 1.0f) {
            int save = canvas.save();
            canvas.scale(scale, scale, avatarStoryParams.originalAvatarRect.centerX(), avatarStoryParams.originalAvatarRect.centerY());
            i2 = save;
        } else {
            i2 = 0;
        }
        float f5 = avatarStoryParams.progressToSate;
        if (f5 != 1.0f) {
            f5 = CubicBezierInterpolator.DEFAULT.getInterpolation(f5);
        }
        float f6 = f5;
        float lerp = avatarStoryParams.isStoryCell ? 0.0f : AndroidUtilities.lerp(getInset(avatarStoryParams.prevState, avatarStoryParams.animateFromUnreadState), getInset(avatarStoryParams.currentState, avatarStoryParams.animateFromUnreadState), avatarStoryParams.progressToSate);
        if (lerp == BitmapDescriptorFactory.HUE_RED) {
            imageReceiver.setImageCoords(avatarStoryParams.originalAvatarRect);
        } else {
            RectF rectF = rectTmp;
            rectF.set(avatarStoryParams.originalAvatarRect);
            rectF.inset(lerp, lerp);
            imageReceiver.setImageCoords(rectF);
        }
        if ((avatarStoryParams.prevState == 1 && avatarStoryParams.progressToSate != 1.0f) || avatarStoryParams.currentState == 1) {
            if (predictiveUnreadState == 2) {
                getCloseFriendsPaint(imageReceiver);
                gradientTools = closeFriendsGradientTools;
            } else {
                getActiveCirclePaint(imageReceiver, avatarStoryParams.isStoryCell);
                gradientTools = storiesGradientTools[avatarStoryParams.isStoryCell ? 1 : 0];
            }
            Object[] objArr = (avatarStoryParams.prevState != 1 || avatarStoryParams.progressToSate == 1.0f) ? null : 1;
            float f7 = avatarStoryParams.isStoryCell ? -AndroidUtilities.m72dp(4) : 0.0f;
            if (objArr != null) {
                m72dp3 = f7 + (AndroidUtilities.m72dp(5) * f6);
                gradientTools.paint.setAlpha((int) (avatarStoryParams.alpha * 255.0f * (1.0f - f6)));
            } else {
                gradientTools.paint.setAlpha((int) (avatarStoryParams.alpha * 255.0f * f6));
                m72dp3 = f7 + (AndroidUtilities.m72dp(5) * (1.0f - f6));
            }
            RectF rectF2 = rectTmp;
            rectF2.set(avatarStoryParams.originalAvatarRect);
            rectF2.inset(m72dp3, m72dp3);
            drawCircleInternal(canvas, imageReceiver.getParentView(), avatarStoryParams, gradientTools.paint);
        }
        int i5 = avatarStoryParams.prevState;
        if ((i5 != 2 || avatarStoryParams.progressToSate == 1.0f) && avatarStoryParams.currentState != 2) {
            i3 = i2;
            f = 0.08f;
            f2 = 1.0f;
        } else {
            Object[] objArr2 = (i5 != 2 || avatarStoryParams.progressToSate == 1.0f) ? null : 1;
            if (avatarStoryParams.isStoryCell) {
                checkStoryCellGrayPaint(avatarStoryParams.isArchive, avatarStoryParams.resourcesProvider);
                paint4 = storyCellGreyPaint[avatarStoryParams.isArchive ? 1 : 0];
            } else {
                checkGrayPaint(avatarStoryParams.resourcesProvider);
                paint4 = grayPaint;
            }
            Paint paint7 = paint4;
            if (avatarStoryParams.drawSegments) {
                Paint activeCirclePaint = getActiveCirclePaint(imageReceiver, avatarStoryParams.isStoryCell);
                activeCirclePaint.setAlpha((int) (avatarStoryParams.alpha * 255.0f));
                Paint closeFriendsPaint = getCloseFriendsPaint(imageReceiver);
                closeFriendsPaint.setAlpha((int) (avatarStoryParams.alpha * 255.0f));
                checkGrayPaint(avatarStoryParams.resourcesProvider);
                paint5 = activeCirclePaint;
                paint6 = closeFriendsPaint;
            } else {
                paint5 = null;
                paint6 = null;
            }
            if (avatarStoryParams.drawSegments) {
                if (avatarStoryParams.isStoryCell) {
                    dpf22 = AndroidUtilities.dpf2(3.5f);
                    f4 = -dpf22;
                }
                f4 = 0.0f;
            } else {
                if (avatarStoryParams.isStoryCell) {
                    dpf22 = AndroidUtilities.dpf2(2.7f);
                    f4 = -dpf22;
                }
                f4 = 0.0f;
            }
            if (objArr2 != null) {
                m72dp2 = f4 + (AndroidUtilities.m72dp(5) * f6);
                paint7.setAlpha((int) (avatarStoryParams.alpha * 255.0f * (1.0f - f6)));
            } else {
                paint7.setAlpha((int) (avatarStoryParams.alpha * 255.0f * f6));
                m72dp2 = f4 + (AndroidUtilities.m72dp(5) * (1.0f - f6));
            }
            RectF rectF3 = rectTmp;
            rectF3.set(avatarStoryParams.originalAvatarRect);
            rectF3.inset(m72dp2, m72dp2);
            if (avatarStoryParams.drawSegments) {
                i3 = i2;
                f = 0.08f;
                f2 = 1.0f;
                drawSegmentsInternal(canvas, storiesController, imageReceiver, avatarStoryParams, paint7, paint5, paint6);
            } else {
                i3 = i2;
                f2 = 1.0f;
                f = 0.08f;
                drawCircleInternal(canvas, imageReceiver.getParentView(), avatarStoryParams, paint7);
            }
        }
        if ((avatarStoryParams.prevState == 3 && avatarStoryParams.progressToSate != f2) || avatarStoryParams.currentState == 3) {
            if (avatarStoryParams.animateFromUnreadState == 1) {
                getActiveCirclePaint(imageReceiver, avatarStoryParams.isStoryCell);
                paint = storiesGradientTools[avatarStoryParams.isStoryCell ? 1 : 0].paint;
            } else if (avatarStoryParams.isStoryCell) {
                checkStoryCellGrayPaint(avatarStoryParams.isArchive, avatarStoryParams.resourcesProvider);
                paint = storyCellGreyPaint[avatarStoryParams.isArchive ? 1 : 0];
            } else {
                checkGrayPaint(avatarStoryParams.resourcesProvider);
                paint = grayPaint;
            }
            Paint paint8 = paint;
            paint8.setAlpha((int) (f6 * 255.0f));
            if (avatarStoryParams.drawSegments) {
                Paint activeCirclePaint2 = getActiveCirclePaint(imageReceiver, avatarStoryParams.isStoryCell);
                activeCirclePaint2.setAlpha((int) (avatarStoryParams.alpha * 255.0f));
                Paint closeFriendsPaint2 = getCloseFriendsPaint(imageReceiver);
                closeFriendsPaint2.setAlpha((int) (avatarStoryParams.alpha * 255.0f));
                checkGrayPaint(avatarStoryParams.resourcesProvider);
                paint2 = activeCirclePaint2;
                paint3 = closeFriendsPaint2;
            } else {
                paint2 = null;
                paint3 = null;
            }
            if (avatarStoryParams.drawSegments) {
                if (avatarStoryParams.isStoryCell) {
                    dpf2 = AndroidUtilities.dpf2(3.5f);
                    f3 = -dpf2;
                }
                f3 = BitmapDescriptorFactory.HUE_RED;
            } else {
                if (avatarStoryParams.isStoryCell) {
                    dpf2 = AndroidUtilities.dpf2(2.7f);
                    f3 = -dpf2;
                }
                f3 = BitmapDescriptorFactory.HUE_RED;
            }
            if (avatarStoryParams.prevState == 3 && avatarStoryParams.progressToSate != f2) {
                m72dp = f3 + (AndroidUtilities.m72dp(7) * f6);
                paint8.setAlpha((int) (avatarStoryParams.alpha * 255.0f * (f2 - f6)));
            } else {
                paint8.setAlpha((int) (avatarStoryParams.alpha * 255.0f * f6));
                m72dp = f3 + (AndroidUtilities.m72dp(5) * (f2 - f6));
            }
            RectF rectF4 = rectTmp;
            rectF4.set(avatarStoryParams.originalAvatarRect);
            rectF4.inset(m72dp, m72dp);
            boolean z3 = avatarStoryParams.drawSegments;
            if (z3 && avatarStoryParams.currentState == 3) {
                float f8 = avatarStoryParams.progressToProgressSegments;
                if (f8 != f2) {
                    float f9 = f8 + f;
                    avatarStoryParams.progressToProgressSegments = f9;
                    if (f9 > f2) {
                        avatarStoryParams.progressToProgressSegments = f2;
                    }
                    float f10 = avatarStoryParams.progressToSegments;
                    avatarStoryParams.progressToSegments = f2 - avatarStoryParams.progressToProgressSegments;
                    drawSegmentsInternal(canvas, storiesController, imageReceiver, avatarStoryParams, paint8, paint2, paint3);
                    avatarStoryParams.progressToSegments = f10;
                    if (imageReceiver.getParentView() != null) {
                        imageReceiver.invalidate();
                        imageReceiver.getParentView().invalidate();
                    }
                }
            }
            if (z3) {
                int unreadState = storiesController.getUnreadState(avatarStoryParams.dialogId);
                if (unreadState == 2) {
                    paint8 = paint3;
                } else if (unreadState == 1) {
                    paint8 = paint2;
                }
            }
            drawProgress(canvas, avatarStoryParams, imageReceiver.getParentView(), paint8);
        }
        imageReceiver.draw(canvas);
        float f11 = avatarStoryParams.progressToSate;
        if (f11 != f2) {
            float f12 = f11 + (AndroidUtilities.screenRefreshTime / 250.0f);
            avatarStoryParams.progressToSate = f12;
            if (f12 > f2) {
                avatarStoryParams.progressToSate = f2;
            }
            if (imageReceiver.getParentView() != null) {
                imageReceiver.invalidate();
                imageReceiver.getParentView().invalidate();
            }
        }
        if (i3 != 0) {
            canvas.restoreToCount(i3);
        }
    }

    private static void drawSegmentsInternal(Canvas canvas, StoriesController storiesController, ImageReceiver imageReceiver, AvatarStoryParams avatarStoryParams, Paint paint, Paint paint2, Paint paint3) {
        int unreadState;
        int size;
        Paint paint4;
        Paint paint5;
        float f;
        float f2;
        RectF rectF;
        checkGrayPaint(avatarStoryParams.resourcesProvider);
        checkStoryCellGrayPaint(avatarStoryParams.isArchive, avatarStoryParams.resourcesProvider);
        long j = avatarStoryParams.crossfadeToDialog;
        if (j != 0) {
            unreadState = storiesController.getUnreadState(j);
        } else {
            unreadState = storiesController.getUnreadState(avatarStoryParams.dialogId);
        }
        int i = 2;
        avatarStoryParams.globalState = unreadState == 0 ? 2 : 1;
        TLRPC$TL_userStories stories = storiesController.getStories(avatarStoryParams.dialogId);
        if (avatarStoryParams.drawHiddenStoriesAsSegments) {
            size = storiesController.getHiddenList().size();
        } else {
            size = (stories == null || stories.stories.size() == 1) ? 1 : stories.stories.size();
        }
        int i2 = size;
        if (unreadState == 2) {
            getCloseFriendsPaint(imageReceiver);
            paint4 = closeFriendsGradientTools.paint;
        } else if (unreadState == 1) {
            getActiveCirclePaint(imageReceiver, avatarStoryParams.isStoryCell);
            paint4 = storiesGradientTools[avatarStoryParams.isStoryCell ? 1 : 0].paint;
        } else {
            paint4 = avatarStoryParams.isStoryCell ? storyCellGreyPaint[avatarStoryParams.isArchive ? 1 : 0] : grayPaint;
        }
        Paint paint6 = paint4;
        if (i2 != 1) {
            float f3 = 360.0f / i2;
            float f4 = (i2 > 20 ? 3 : 5) * avatarStoryParams.progressToSegments;
            if (f4 > f3) {
                f4 = BitmapDescriptorFactory.HUE_RED;
            }
            float f5 = f4;
            int max = avatarStoryParams.drawHiddenStoriesAsSegments ? 0 : Math.max(stories.max_read_id, storiesController.dialogIdToMaxReadId.get(avatarStoryParams.dialogId, 0));
            int i3 = 0;
            while (i3 < i2) {
                Paint paint7 = avatarStoryParams.isStoryCell ? storyCellGreyPaint[avatarStoryParams.isArchive ? 1 : 0] : grayPaint;
                if (avatarStoryParams.drawHiddenStoriesAsSegments) {
                    int unreadState2 = storiesController.getUnreadState(storiesController.getHiddenList().get((i2 - 1) - i3).user_id);
                    if (unreadState2 == i) {
                        paint7 = paint3;
                    } else if (unreadState2 == 1) {
                        paint7 = paint2;
                    }
                } else if (stories.stories.get(i3).justUploaded || stories.stories.get(i3).f1557id > max) {
                    paint5 = stories.stories.get(i3).close_friends ? paint3 : paint2;
                    float f6 = (i3 * f3) - 90.0f;
                    f = f6 + f5;
                    f2 = (f6 + f3) - f5;
                    rectF = rectTmp;
                    Paint paint8 = paint5;
                    int i4 = i3;
                    int i5 = max;
                    drawSegment(canvas, rectF, paint5, f, f2, avatarStoryParams);
                    if (avatarStoryParams.progressToSegments != 1.0f && paint8 != paint6) {
                        paint6.getStrokeWidth();
                        paint6.setAlpha((int) ((1.0f - avatarStoryParams.progressToSegments) * 255.0f));
                        drawSegment(canvas, rectF, paint6, f, f2, avatarStoryParams);
                        paint6.setAlpha(255);
                    }
                    i3 = i4 + 1;
                    max = i5;
                    i = 2;
                }
                paint5 = paint7;
                float f62 = (i3 * f3) - 90.0f;
                f = f62 + f5;
                f2 = (f62 + f3) - f5;
                rectF = rectTmp;
                Paint paint82 = paint5;
                int i42 = i3;
                int i52 = max;
                drawSegment(canvas, rectF, paint5, f, f2, avatarStoryParams);
                if (avatarStoryParams.progressToSegments != 1.0f) {
                    paint6.getStrokeWidth();
                    paint6.setAlpha((int) ((1.0f - avatarStoryParams.progressToSegments) * 255.0f));
                    drawSegment(canvas, rectF, paint6, f, f2, avatarStoryParams);
                    paint6.setAlpha(255);
                }
                i3 = i42 + 1;
                max = i52;
                i = 2;
            }
            return;
        }
        Paint paint9 = storiesController.hasUnreadStories(avatarStoryParams.dialogId) ? paint2 : paint;
        RectF rectF2 = rectTmp;
        Paint paint10 = paint9;
        drawSegment(canvas, rectF2, paint10, -90.0f, 90.0f, avatarStoryParams);
        drawSegment(canvas, rectF2, paint10, 90.0f, 270.0f, avatarStoryParams);
        float f7 = avatarStoryParams.progressToSegments;
        if (f7 == 1.0f || paint9 == paint6) {
            return;
        }
        paint6.setAlpha((int) ((1.0f - f7) * 255.0f));
        drawSegment(canvas, rectF2, paint6, -90.0f, 90.0f, avatarStoryParams);
        drawSegment(canvas, rectF2, paint6, 90.0f, 270.0f, avatarStoryParams);
        paint6.setAlpha(255);
    }

    private static int getPredictiveUnreadState(StoriesController storiesController, long j) {
        if (storiesController.isAvatarsEnabled()) {
            TLRPC$User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j));
            if (j == UserConfig.getInstance(UserConfig.selectedAccount).clientUserId || user == null || user.stories_max_id <= 0 || user.stories_unavailable) {
                return 0;
            }
            return user.stories_max_id > storiesController.dialogIdToMaxReadId.get(j, 0) ? 1 : 2;
        }
        return 0;
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
            return AndroidUtilities.m72dp(3);
        }
        if (i == 1) {
            return AndroidUtilities.m72dp(4);
        }
        return 0;
    }

    public static Paint getActiveCirclePaint(ImageReceiver imageReceiver, boolean z) {
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
        storiesGradientTools[z ? 1 : 0].setBounds(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageX2(), imageReceiver.getImageY2());
        return storiesGradientTools[z ? 1 : 0].paint;
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

    public static void setStoryMiniImage(ImageReceiver imageReceiver, TLRPC$StoryItem tLRPC$StoryItem) {
        ArrayList<TLRPC$PhotoSize> arrayList;
        if (tLRPC$StoryItem == null) {
            return;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$StoryItem.media;
        TLRPC$Document tLRPC$Document = tLRPC$MessageMedia.document;
        if (tLRPC$Document != null) {
            imageReceiver.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 1000), tLRPC$StoryItem.media.document), "100_100", null, null, ImageLoader.createStripedBitmap(tLRPC$StoryItem.media.document.thumbs), 0L, null, tLRPC$StoryItem, 0);
            return;
        }
        TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia != null ? tLRPC$MessageMedia.photo : null;
        if (tLRPC$Photo != null && (arrayList = tLRPC$Photo.sizes) != null) {
            imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, 1000), tLRPC$Photo), "100_100", null, null, ImageLoader.createStripedBitmap(tLRPC$Photo.sizes), 0L, null, tLRPC$StoryItem, 0);
        } else {
            imageReceiver.clearImage();
        }
    }

    public static void setImage(ImageReceiver imageReceiver, TLRPC$StoryItem tLRPC$StoryItem) {
        setImage(imageReceiver, tLRPC$StoryItem, "320_320");
    }

    public static void setImage(ImageReceiver imageReceiver, TLRPC$StoryItem tLRPC$StoryItem, String str) {
        ArrayList<TLRPC$PhotoSize> arrayList;
        TLRPC$Document tLRPC$Document;
        if (tLRPC$StoryItem == null) {
            return;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$StoryItem.media;
        if (tLRPC$MessageMedia != null && (tLRPC$Document = tLRPC$MessageMedia.document) != null) {
            imageReceiver.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, Integer.MAX_VALUE), tLRPC$StoryItem.media.document), str, null, null, ImageLoader.createStripedBitmap(tLRPC$StoryItem.media.document.thumbs), 0L, null, tLRPC$StoryItem, 0);
            return;
        }
        TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia != null ? tLRPC$MessageMedia.photo : null;
        if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaUnsupported) {
            Bitmap createBitmap = Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
            createBitmap.eraseColor(ColorUtils.blendARGB(-16777216, -1, 0.2f));
            imageReceiver.setImageBitmap(createBitmap);
        } else if (tLRPC$Photo != null && (arrayList = tLRPC$Photo.sizes) != null) {
            imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, Integer.MAX_VALUE), tLRPC$Photo), str, null, null, ImageLoader.createStripedBitmap(tLRPC$Photo.sizes), 0L, null, tLRPC$StoryItem, 0);
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

    public static void setThumbImage(ImageReceiver imageReceiver, TLRPC$StoryItem tLRPC$StoryItem, int i, int i2) {
        ArrayList<TLRPC$PhotoSize> arrayList;
        TLRPC$Document tLRPC$Document;
        TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$StoryItem.media;
        if (tLRPC$MessageMedia != null && (tLRPC$Document = tLRPC$MessageMedia.document) != null) {
            ImageLocation forDocument = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, AndroidUtilities.m72dp(Math.max(i, i2)), false, null, true), tLRPC$StoryItem.media.document);
            imageReceiver.setImage(forDocument, i + "_" + i2, null, null, ImageLoader.createStripedBitmap(tLRPC$StoryItem.media.document.thumbs), 0L, null, tLRPC$StoryItem, 0);
            return;
        }
        TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia != null ? tLRPC$MessageMedia.photo : null;
        if (tLRPC$Photo != null && (arrayList = tLRPC$Photo.sizes) != null) {
            ImageLocation forPhoto = ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.m72dp(Math.max(i, i2)), false, null, true), tLRPC$Photo);
            imageReceiver.setImage(null, null, forPhoto, i + "_" + i2, null, null, ImageLoader.createStripedBitmap(tLRPC$Photo.sizes), 0L, null, tLRPC$StoryItem, 0);
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
            string = LocaleController.getString("StoryEditing", C3473R.string.StoryEditing);
        } else {
            string = LocaleController.getString("UploadingStory", C3473R.string.UploadingStory);
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
            string = LocaleController.getString("StoryEditing", C3473R.string.StoryEditing);
        } else {
            string = LocaleController.getString("UploadingStory", C3473R.string.UploadingStory);
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
        return createExpiredStoryString(false, "ExpiredStory", C3473R.string.ExpiredStory, new Object[0]);
    }

    public static CharSequence createExpiredStoryString(boolean z, String str, int i, Object... objArr) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "d ").append((CharSequence) LocaleController.formatString(str, i, objArr));
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C3473R.C3475drawable.msg_mini_bomb);
        if (z) {
            coloredImageSpan.setScale(0.8f);
        } else {
            coloredImageSpan.setTopOffset(-1);
        }
        spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 0);
        return spannableStringBuilder;
    }

    public static CharSequence createReplyStoryString() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "d ").append((CharSequence) LocaleController.getString("Story", C3473R.string.Story));
        spannableStringBuilder.setSpan(new ColoredImageSpan(C3473R.C3475drawable.msg_mini_replystory2), 0, 1, 0);
        return spannableStringBuilder;
    }

    public static boolean hasExpiredViews(TLRPC$StoryItem tLRPC$StoryItem) {
        return tLRPC$StoryItem != null && ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime() > tLRPC$StoryItem.expire_date + 86400;
    }

    public static void applyViewedUser(TLRPC$StoryItem tLRPC$StoryItem, TLRPC$User tLRPC$User) {
        if (tLRPC$User == null || tLRPC$StoryItem.dialogId != UserConfig.getInstance(UserConfig.selectedAccount).clientUserId || hasExpiredViews(tLRPC$StoryItem)) {
            return;
        }
        if (tLRPC$StoryItem.views == null) {
            tLRPC$StoryItem.views = new TLRPC$TL_storyViews();
        }
        TLRPC$StoryViews tLRPC$StoryViews = tLRPC$StoryItem.views;
        if (tLRPC$StoryViews.views_count == 0) {
            tLRPC$StoryViews.views_count = 1;
            tLRPC$StoryViews.recent_viewers.add(Long.valueOf(tLRPC$User.f1685id));
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

    public static boolean isExpired(int i, TLRPC$StoryItem tLRPC$StoryItem) {
        return ConnectionsManager.getInstance(i).getCurrentTime() > tLRPC$StoryItem.expire_date;
    }

    public static String getStoryImageFilter() {
        int max = (int) (Math.max(AndroidUtilities.getRealScreenSize().x, AndroidUtilities.getRealScreenSize().y) / AndroidUtilities.density);
        return max + "_" + max;
    }

    /* renamed from: org.telegram.ui.Stories.StoriesUtilities$EnsureStoryFileLoadedObject */
    /* loaded from: classes7.dex */
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

    public static EnsureStoryFileLoadedObject ensureStoryFileLoaded(TLRPC$TL_userStories tLRPC$TL_userStories, final Runnable runnable) {
        TLRPC$StoryItem tLRPC$StoryItem;
        ArrayList<TLRPC$PhotoSize> arrayList;
        ArrayList<TLRPC$PhotoSize> arrayList2;
        TLRPC$Document tLRPC$Document;
        int lastIndexOf;
        if (tLRPC$TL_userStories == null || tLRPC$TL_userStories.stories.isEmpty() || tLRPC$TL_userStories.user_id == UserConfig.getInstance(UserConfig.selectedAccount).clientUserId) {
            runnable.run();
            return null;
        }
        StoriesController storiesController = MessagesController.getInstance(UserConfig.selectedAccount).storiesController;
        int i = storiesController.dialogIdToMaxReadId.get(tLRPC$TL_userStories.user_id);
        int i2 = 0;
        while (true) {
            if (i2 >= tLRPC$TL_userStories.stories.size()) {
                tLRPC$StoryItem = null;
                break;
            } else if (tLRPC$TL_userStories.stories.get(i2).f1557id > i) {
                tLRPC$StoryItem = tLRPC$TL_userStories.stories.get(i2);
                break;
            } else {
                i2++;
            }
        }
        if (tLRPC$StoryItem == null) {
            tLRPC$StoryItem = tLRPC$TL_userStories.stories.get(0);
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$StoryItem.media;
        if (tLRPC$MessageMedia != null && tLRPC$MessageMedia.document != null) {
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tLRPC$StoryItem.media.document, "", false);
            if (pathToAttach != null && pathToAttach.exists()) {
                runnable.run();
                return null;
            }
            File pathToAttach2 = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tLRPC$StoryItem.media.document, "", true);
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
        final EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = new EnsureStoryFileLoadedObject(storiesController, tLRPC$TL_userStories.user_id);
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
        AndroidUtilities.runOnUIThread(runnableArr[0], C0479C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
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
        TLRPC$MessageMedia tLRPC$MessageMedia2 = tLRPC$StoryItem.media;
        if (tLRPC$MessageMedia2 != null && (tLRPC$Document = tLRPC$MessageMedia2.document) != null) {
            ensureStoryFileLoadedObject.imageReceiver.setImage(ImageLocation.getForDocument(tLRPC$Document), storyImageFilter + "_pframe", null, null, null, 0L, null, tLRPC$StoryItem, 0);
            return ensureStoryFileLoadedObject;
        }
        TLRPC$Photo tLRPC$Photo2 = tLRPC$MessageMedia2 != null ? tLRPC$MessageMedia2.photo : null;
        if (tLRPC$Photo2 != null && (arrayList2 = tLRPC$Photo2.sizes) != null) {
            ensureStoryFileLoadedObject.imageReceiver.setImage(null, null, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList2, Integer.MAX_VALUE), tLRPC$Photo2), storyImageFilter, null, null, null, 0L, null, tLRPC$StoryItem, 0);
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
    /* loaded from: classes7.dex */
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
        public boolean drawSegments;
        public boolean forceAnimateProgressToSegments;
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
        public TLRPC$StoryItem storyItem;
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
            this.child = view;
            StoriesController storiesController = MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController();
            boolean z = false;
            if (motionEvent.getAction() == 0 && this.originalAvatarRect.contains(motionEvent.getX(), motionEvent.getY())) {
                TLRPC$User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(this.dialogId));
                if (storiesController.isAvatarsEnabled()) {
                    if (this.drawHiddenStoriesAsSegments) {
                        z = storiesController.hasHiddenStories();
                    } else if (MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController().hasStories(this.dialogId) || (user != null && !user.stories_unavailable && user.stories_max_id > 0)) {
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
                TLRPC$User user = messagesController.getUser(Long.valueOf(this.dialogId));
                if (user == null || user.stories_unavailable || user.stories_max_id <= 0) {
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
            lastFragment.getOrCreateStoryViewer().open(lastFragment.getContext(), j, StoriesListPlaceProvider.m24of((RecyclerListView) this.child.getParent()));
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
    /* loaded from: classes7.dex */
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
            messagesController.getUser(Long.valueOf(j));
            TLRPC$TL_stories_getUserStories tLRPC$TL_stories_getUserStories = new TLRPC$TL_stories_getUserStories();
            tLRPC$TL_stories_getUserStories.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getUserStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3
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
        /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$load$2(org.telegram.tgnet.TLObject r10, final long r11, final android.view.View r13, final org.telegram.p043ui.Stories.StoriesUtilities.AvatarStoryParams r14, org.telegram.messenger.MessagesController r15) {
            /*
                r9 = this;
                r0 = 1
                r1 = 0
                if (r10 == 0) goto L37
                org.telegram.tgnet.TLRPC$TL_stories_userStories r10 = (org.telegram.tgnet.TLRPC$TL_stories_userStories) r10
                int r2 = r9.currentAccount
                org.telegram.messenger.MessagesController r2 = org.telegram.messenger.MessagesController.getInstance(r2)
                java.util.ArrayList<org.telegram.tgnet.TLRPC$User> r3 = r10.users
                r2.putUsers(r3, r1)
                org.telegram.tgnet.TLRPC$TL_userStories r10 = r10.stories
                java.util.ArrayList<org.telegram.tgnet.TLRPC$StoryItem> r2 = r10.stories
                boolean r2 = r2.isEmpty()
                if (r2 != 0) goto L37
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
                goto L38
            L37:
                r10 = r0
            L38:
                java.lang.Long r14 = java.lang.Long.valueOf(r11)
                org.telegram.tgnet.TLRPC$User r14 = r15.getUser(r14)
                r14.stories_unavailable = r0
                int r2 = r9.currentAccount
                org.telegram.messenger.MessagesStorage r2 = org.telegram.messenger.MessagesStorage.getInstance(r2)
                java.util.List r3 = java.util.Collections.singletonList(r14)
                r4 = 0
                r2.putUsersAndChats(r3, r4, r1, r0)
                r15.putUser(r14, r1)
                if (r10 == 0) goto L65
                r13.invalidate()
                int r10 = r9.currentAccount
                org.telegram.messenger.MessagesController r10 = org.telegram.messenger.MessagesController.getInstance(r10)
                org.telegram.ui.Stories.StoriesController r10 = r10.getStoriesController()
                r10.setLoading(r11, r1)
            L65:
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
}
