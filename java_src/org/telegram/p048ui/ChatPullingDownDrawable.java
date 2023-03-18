package org.telegram.p048ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.fork.controller.ToolsController;
import org.fork.enums.DialogType;
import org.fork.enums.SortingFilter;
import org.telegram.PhoneFormat.C3204PhoneFormat;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.CounterView;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.ChatPullingDownDrawable */
/* loaded from: classes5.dex */
public class ChatPullingDownDrawable implements NotificationCenter.NotificationCenterDelegate {
    boolean animateCheck;
    public boolean animateSwipeToRelease;
    float bounceProgress;
    StaticLayout chatNameLayout;
    int chatNameWidth;
    float checkProgress;
    float circleRadius;
    private final int currentAccount;
    private final long currentDialog;
    private final DialogType currentDialogType;
    public int dialogFilterId;
    public int dialogFolderId;
    boolean drawFolderBackground;
    boolean emptyStub;
    private final int filterId;
    private final int folderId;
    private final View fragmentView;
    long lastHapticTime;
    float lastProgress;
    public long lastShowingReleaseTime;
    int lastWidth;
    StaticLayout layout1;
    int layout1Width;
    StaticLayout layout2;
    int layout2Width;
    TLRPC$Chat nextChat;
    public long nextDialogId;
    public TLRPC$User nextUser;
    Runnable onAnimationFinishRunnable;
    View parentView;
    float progressToBottomPanel;
    private final Theme.ResourcesProvider resourcesProvider;
    boolean showBottomPanel;
    AnimatorSet showReleaseAnimator;
    float swipeToReleaseProgress;
    Paint arrowPaint = new Paint(1);
    TextPaint textPaint = new TextPaint(1);
    TextPaint textPaint2 = new TextPaint(1);
    private Paint xRefPaint = new Paint(1);
    Path path = new Path();
    ImageReceiver imageReceiver = new ImageReceiver();
    CounterView.CounterDrawable counterDrawable = new CounterView.CounterDrawable(null, true, null);
    int[] params = new int[3];

    public long getUserId() {
        return this.nextUser.f1639id;
    }

    public ChatPullingDownDrawable(int i, View view, long j, int i2, int i3, Theme.ResourcesProvider resourcesProvider) {
        this.fragmentView = view;
        this.currentAccount = i;
        this.currentDialog = j;
        this.folderId = i2;
        this.filterId = i3;
        this.resourcesProvider = resourcesProvider;
        this.currentDialogType = DialogType.getDialogType(j, MessagesController.getInstance(i));
        this.arrowPaint.setStrokeWidth(AndroidUtilities.dpf2(2.8f));
        this.arrowPaint.setStrokeCap(Paint.Cap.ROUND);
        CounterView.CounterDrawable counterDrawable = this.counterDrawable;
        counterDrawable.gravity = 3;
        counterDrawable.setType(1);
        CounterView.CounterDrawable counterDrawable2 = this.counterDrawable;
        counterDrawable2.addServiceGradient = true;
        counterDrawable2.circlePaint = getThemedPaint("paintChatActionBackground");
        CounterView.CounterDrawable counterDrawable3 = this.counterDrawable;
        TextPaint textPaint = this.textPaint;
        counterDrawable3.textPaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.m50dp(13));
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textPaint2.setTextSize(AndroidUtilities.m50dp(14));
        this.xRefPaint.setColor(-16777216);
        this.xRefPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        updateDialog();
    }

    public void updateDialog() {
        TLRPC$Dialog nextUnreadDialog = getNextUnreadDialog(this.currentDialog, this.folderId, this.filterId, true, this.params);
        if (nextUnreadDialog != null) {
            long j = nextUnreadDialog.f1505id;
            this.nextDialogId = j;
            int[] iArr = this.params;
            this.drawFolderBackground = iArr[0] == 1;
            this.dialogFolderId = iArr[1];
            this.dialogFilterId = iArr[2];
            this.emptyStub = false;
            if (DialogObject.isUserDialog(j)) {
                this.nextUser = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(nextUnreadDialog.f1505id));
            } else {
                this.nextChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-nextUnreadDialog.f1505id));
            }
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            TLRPC$User tLRPC$User = this.nextUser;
            if (tLRPC$User != null) {
                avatarDrawable.setInfo(tLRPC$User);
            } else {
                avatarDrawable.setInfo(this.nextChat);
            }
            ImageReceiver imageReceiver = this.imageReceiver;
            TLObject tLObject = this.nextUser;
            if (tLObject == null) {
                tLObject = this.nextChat;
            }
            imageReceiver.setImage(ImageLocation.getForUserOrChat(tLObject, 1), "50_50", avatarDrawable, null, UserConfig.getInstance(0).getCurrentUser(), 0);
            MessagesController.getInstance(this.currentAccount).ensureMessagesLoaded(nextUnreadDialog.f1505id, 0, null);
            this.counterDrawable.setCount(nextUnreadDialog.unread_count, false);
            return;
        }
        this.nextUser = null;
        this.nextChat = null;
        this.drawFolderBackground = false;
        this.emptyStub = true;
    }

    public void setWidth(int i) {
        DialogType dialogType;
        String string;
        String string2;
        int i2;
        if (i != this.lastWidth) {
            this.circleRadius = AndroidUtilities.m50dp(56) / 2.0f;
            this.lastWidth = i;
            TLRPC$Chat tLRPC$Chat = this.nextChat;
            String string3 = tLRPC$Chat != null ? tLRPC$Chat.title : LocaleController.getString("SwipeToGoNextChannelEnd", C3286R.string.SwipeToGoNextChannelEnd);
            if (this.nextUser != null) {
                ContactsController contactsController = ContactsController.getInstance(this.currentAccount);
                if (contactsController.contactsDict.get(Long.valueOf(this.nextUser.f1639id)) == null && ((contactsController.contactsDict.size() != 0 || !contactsController.isLoadingContacts()) && !TextUtils.isEmpty(this.nextUser.phone))) {
                    C3204PhoneFormat c3204PhoneFormat = C3204PhoneFormat.getInstance();
                    string3 = c3204PhoneFormat.format("+" + this.nextUser.phone);
                } else {
                    string3 = UserObject.getUserName(this.nextUser);
                }
            } else if (this.nextChat == null && (dialogType = this.currentDialogType) != DialogType.CHANNEL) {
                string3 = LocaleController.getInternalString(dialogType.getNoUnreadDialogsResId());
            }
            String str = string3;
            int measureText = (int) this.textPaint.measureText(str);
            this.chatNameWidth = measureText;
            this.chatNameWidth = Math.min(measureText, this.lastWidth - AndroidUtilities.m50dp(60));
            this.chatNameLayout = new StaticLayout(str, this.textPaint, this.chatNameWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            boolean z = this.drawFolderBackground;
            if (z && (i2 = this.dialogFolderId) != this.folderId && i2 != 0) {
                string = LocaleController.getString("SwipeToGoNextArchive", C3286R.string.SwipeToGoNextArchive);
                string2 = LocaleController.getString("ReleaseToGoNextArchive", C3286R.string.ReleaseToGoNextArchive);
                DialogType dialogType2 = this.currentDialogType;
                if (dialogType2 != DialogType.CHANNEL) {
                    string = LocaleController.getInternalString(dialogType2.getPullToGoToUnreadArchivedDialogsResId());
                    string2 = LocaleController.getInternalString(this.currentDialogType.getReleaseToGoToUnreadArchivedDialogsResId());
                }
            } else if (z) {
                string = LocaleController.getString("SwipeToGoNextFolder", C3286R.string.SwipeToGoNextFolder);
                string2 = LocaleController.getString("ReleaseToGoNextFolder", C3286R.string.ReleaseToGoNextFolder);
            } else {
                string = LocaleController.getString("SwipeToGoNextChannel", C3286R.string.SwipeToGoNextChannel);
                string2 = LocaleController.getString("ReleaseToGoNextChannel", C3286R.string.ReleaseToGoNextChannel);
                DialogType dialogType3 = this.currentDialogType;
                if (dialogType3 != DialogType.CHANNEL) {
                    string = LocaleController.getInternalString(dialogType3.getPullToGoToNextUnreadDialogResId());
                    string2 = LocaleController.getInternalString(this.currentDialogType.getReleaseToGoToNextUnreadDialogResId());
                }
            }
            String str2 = string;
            String str3 = string2;
            int measureText2 = (int) this.textPaint2.measureText(str2);
            this.layout1Width = measureText2;
            this.layout1Width = Math.min(measureText2, this.lastWidth - AndroidUtilities.m50dp(60));
            this.layout1 = new StaticLayout(str2, this.textPaint2, this.layout1Width, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            int measureText3 = (int) this.textPaint2.measureText(str3);
            this.layout2Width = measureText3;
            this.layout2Width = Math.min(measureText3, this.lastWidth - AndroidUtilities.m50dp(60));
            this.layout2 = new StaticLayout(str3, this.textPaint2, this.layout2Width, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.imageReceiver.setImageCoords((this.lastWidth / 2.0f) - (AndroidUtilities.m50dp(40) / 2.0f), (AndroidUtilities.m50dp(12) + this.circleRadius) - (AndroidUtilities.m50dp(40) / 2.0f), AndroidUtilities.m50dp(40), AndroidUtilities.m50dp(40));
            this.imageReceiver.setRoundRadius((int) (AndroidUtilities.m50dp(40) / 2.0f));
            this.counterDrawable.setSize(AndroidUtilities.m50dp(28), AndroidUtilities.m50dp(100));
        }
    }

    public void draw(Canvas canvas, View view, float f, float f2) {
        int i;
        int i2;
        int i3;
        float f3;
        this.parentView = view;
        this.counterDrawable.setParent(view);
        float m50dp = AndroidUtilities.m50dp(110) * f;
        if (m50dp < AndroidUtilities.m50dp(8)) {
            return;
        }
        float f4 = f < 0.2f ? 5.0f * f * f2 : f2;
        Theme.applyServiceShaderMatrix(this.lastWidth, view.getMeasuredHeight(), BitmapDescriptorFactory.HUE_RED, view.getMeasuredHeight() - m50dp);
        this.textPaint.setColor(getThemedColor("chat_serviceText"));
        this.arrowPaint.setColor(getThemedColor("chat_serviceText"));
        this.textPaint2.setColor(getThemedColor("chat_messagePanelHint"));
        int alpha = getThemedPaint("paintChatActionBackground").getAlpha();
        int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
        int alpha3 = this.textPaint.getAlpha();
        int alpha4 = this.arrowPaint.getAlpha();
        Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (alpha2 * f4));
        int i4 = (int) (alpha * f4);
        getThemedPaint("paintChatActionBackground").setAlpha(i4);
        int i5 = (int) (alpha3 * f4);
        this.textPaint.setAlpha(i5);
        this.imageReceiver.setAlpha(f4);
        int i6 = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
        if ((i6 < 0 || this.lastProgress >= 1.0f) && (f >= 1.0f || this.lastProgress != 1.0f)) {
            i = alpha;
        } else {
            i = alpha;
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.lastHapticTime > 100) {
                view.performHapticFeedback(3, 2);
                this.lastHapticTime = currentTimeMillis;
            }
            this.lastProgress = f;
        }
        if (i6 == 0 && !this.animateSwipeToRelease) {
            this.animateSwipeToRelease = true;
            this.animateCheck = true;
            showReleaseState(true, view);
            this.lastShowingReleaseTime = System.currentTimeMillis();
        } else if (i6 != 0 && this.animateSwipeToRelease) {
            this.animateSwipeToRelease = false;
            showReleaseState(false, view);
        }
        float f5 = this.lastWidth / 2.0f;
        float f6 = this.bounceProgress * (-AndroidUtilities.m50dp(4));
        if (this.emptyStub) {
            m50dp -= f6;
        }
        float f7 = m50dp / 2.0f;
        float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(this.circleRadius, (f7 - (AndroidUtilities.m50dp(16) * f)) - AndroidUtilities.m50dp(4)));
        float max2 = ((Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(this.circleRadius * f, f7 - (AndroidUtilities.m50dp(8) * f))) * 2.0f) - AndroidUtilities.dp2(16.0f)) * (1.0f - this.swipeToReleaseProgress);
        float f8 = this.swipeToReleaseProgress;
        float m50dp2 = max2 + (AndroidUtilities.m50dp(56) * f8);
        if (f8 < 1.0f || this.emptyStub) {
            float f9 = -m50dp;
            i2 = alpha3;
            i3 = alpha2;
            float m50dp3 = ((-AndroidUtilities.m50dp(8)) * (1.0f - this.swipeToReleaseProgress)) + ((AndroidUtilities.m50dp(56) + f9) * this.swipeToReleaseProgress);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f5 - max, f9, max + f5, m50dp3);
            if (this.swipeToReleaseProgress > BitmapDescriptorFactory.HUE_RED && !this.emptyStub) {
                float m50dp4 = AndroidUtilities.m50dp(16) * this.swipeToReleaseProgress;
                rectF.inset(m50dp4, m50dp4);
            }
            drawBackground(canvas, rectF);
            float m50dp5 = ((AndroidUtilities.m50dp(24) + f9) + (AndroidUtilities.m50dp(8) * (1.0f - f))) - (AndroidUtilities.m50dp(36) * this.swipeToReleaseProgress);
            canvas.save();
            rectF.inset(AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1));
            canvas.clipRect(rectF);
            float f10 = this.swipeToReleaseProgress;
            if (f10 > BitmapDescriptorFactory.HUE_RED) {
                this.arrowPaint.setAlpha((int) ((1.0f - f10) * 255.0f));
            }
            drawArrow(canvas, f5, m50dp5, AndroidUtilities.m50dp(24) * f);
            if (this.emptyStub) {
                float dp2 = ((((-AndroidUtilities.m50dp(8)) - (AndroidUtilities.dp2(8.0f) * f)) - m50dp2) * (1.0f - this.swipeToReleaseProgress)) + ((f9 - AndroidUtilities.m50dp(2)) * this.swipeToReleaseProgress) + f6;
                this.arrowPaint.setAlpha(alpha4);
                canvas.save();
                canvas.scale(f, f, f5, AndroidUtilities.m50dp(28) + dp2);
                drawCheck(canvas, f5, dp2 + AndroidUtilities.m50dp(28));
                canvas.restore();
            }
            canvas.restore();
        } else {
            i3 = alpha2;
            i2 = alpha3;
        }
        if (this.chatNameLayout != null && this.swipeToReleaseProgress > BitmapDescriptorFactory.HUE_RED) {
            getThemedPaint("paintChatActionBackground").setAlpha(i4);
            this.textPaint.setAlpha(i5);
            float m50dp6 = ((AndroidUtilities.m50dp(20) * (1.0f - this.swipeToReleaseProgress)) - (AndroidUtilities.m50dp(36) * this.swipeToReleaseProgress)) + f6;
            RectF rectF2 = AndroidUtilities.rectTmp;
            int i7 = this.lastWidth;
            int i8 = this.chatNameWidth;
            rectF2.set((i7 - i8) / 2.0f, m50dp6, i7 - ((i7 - i8) / 2.0f), this.chatNameLayout.getHeight() + m50dp6);
            rectF2.inset(-AndroidUtilities.m50dp(8), -AndroidUtilities.m50dp(4));
            canvas.drawRoundRect(rectF2, AndroidUtilities.m50dp(15), AndroidUtilities.m50dp(15), getThemedPaint("paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawRoundRect(rectF2, AndroidUtilities.m50dp(15), AndroidUtilities.m50dp(15), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            canvas.save();
            canvas.translate((this.lastWidth - this.chatNameWidth) / 2.0f, m50dp6);
            this.chatNameLayout.draw(canvas);
            canvas.restore();
        }
        if (this.emptyStub || m50dp2 <= BitmapDescriptorFactory.HUE_RED) {
            f3 = 1.0f;
        } else {
            float dp22 = ((((-AndroidUtilities.m50dp(8)) - (AndroidUtilities.dp2(8.0f) * f)) - m50dp2) * (1.0f - this.swipeToReleaseProgress)) + (((-m50dp) + AndroidUtilities.m50dp(4)) * this.swipeToReleaseProgress) + f6;
            float f11 = m50dp2 / 2.0f;
            this.imageReceiver.setRoundRadius((int) f11);
            this.imageReceiver.setImageCoords(f5 - f11, dp22, m50dp2, m50dp2);
            if (this.swipeToReleaseProgress > BitmapDescriptorFactory.HUE_RED) {
                f3 = 1.0f;
                canvas.saveLayerAlpha(this.imageReceiver.getImageX(), this.imageReceiver.getImageY(), this.imageReceiver.getImageWidth() + this.imageReceiver.getImageX(), this.imageReceiver.getImageHeight() + this.imageReceiver.getImageY(), 255, 31);
                this.imageReceiver.draw(canvas);
                float f12 = this.swipeToReleaseProgress;
                canvas.scale(f12, f12, AndroidUtilities.m50dp(12) + f5 + this.counterDrawable.getCenterX(), (dp22 - AndroidUtilities.m50dp(6)) + AndroidUtilities.m50dp(14));
                canvas.translate(AndroidUtilities.m50dp(12) + f5, dp22 - AndroidUtilities.m50dp(6));
                this.counterDrawable.updateBackgroundRect();
                this.counterDrawable.rectF.inset(-AndroidUtilities.m50dp(2), -AndroidUtilities.m50dp(2));
                RectF rectF3 = this.counterDrawable.rectF;
                canvas.drawRoundRect(rectF3, rectF3.height() / 2.0f, this.counterDrawable.rectF.height() / 2.0f, this.xRefPaint);
                canvas.restore();
                canvas.save();
                float f13 = this.swipeToReleaseProgress;
                canvas.scale(f13, f13, AndroidUtilities.m50dp(12) + f5 + this.counterDrawable.getCenterX(), (dp22 - AndroidUtilities.m50dp(6)) + AndroidUtilities.m50dp(14));
                canvas.translate(f5 + AndroidUtilities.m50dp(12), dp22 - AndroidUtilities.m50dp(6));
                this.counterDrawable.draw(canvas);
                canvas.restore();
            } else {
                f3 = 1.0f;
                this.imageReceiver.draw(canvas);
            }
        }
        getThemedPaint("paintChatActionBackground").setAlpha(i);
        Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(i3);
        this.textPaint.setAlpha(i2);
        this.arrowPaint.setAlpha(alpha4);
        this.imageReceiver.setAlpha(f3);
    }

    private void drawCheck(Canvas canvas, float f, float f2) {
        if (this.animateCheck) {
            float f3 = this.checkProgress;
            if (f3 < 1.0f) {
                float f4 = f3 + 0.07272727f;
                this.checkProgress = f4;
                if (f4 > 1.0f) {
                    this.checkProgress = 1.0f;
                }
            }
            float f5 = this.checkProgress;
            float f6 = f5 > 0.5f ? 1.0f : f5 / 0.5f;
            float f7 = f5 < 0.5f ? BitmapDescriptorFactory.HUE_RED : (f5 - 0.5f) / 0.5f;
            canvas.save();
            canvas.clipRect(AndroidUtilities.rectTmp);
            canvas.translate(f - AndroidUtilities.m50dp(24), f2 - AndroidUtilities.m50dp(24));
            float m50dp = AndroidUtilities.m50dp(16);
            float m50dp2 = AndroidUtilities.m50dp(26);
            float m50dp3 = AndroidUtilities.m50dp(22);
            float m50dp4 = AndroidUtilities.m50dp(32);
            float m50dp5 = AndroidUtilities.m50dp(32);
            float m50dp6 = AndroidUtilities.m50dp(20);
            float f8 = 1.0f - f6;
            canvas.drawLine(m50dp, m50dp2, (m50dp * f8) + (m50dp3 * f6), (f8 * m50dp2) + (f6 * m50dp4), this.arrowPaint);
            if (f7 > BitmapDescriptorFactory.HUE_RED) {
                float f9 = 1.0f - f7;
                canvas.drawLine(m50dp3, m50dp4, (m50dp3 * f9) + (m50dp5 * f7), (f9 * m50dp4) + (m50dp6 * f7), this.arrowPaint);
            }
            canvas.restore();
        }
    }

    private void drawBackground(Canvas canvas, RectF rectF) {
        if (this.drawFolderBackground) {
            this.path.reset();
            float width = rectF.width() * 0.2f;
            float width2 = rectF.width() * 0.1f;
            float width3 = rectF.width() * 0.03f;
            float f = width2 / 2.0f;
            float height = rectF.height() - width2;
            this.path.moveTo(rectF.right, rectF.top + width + width2);
            float f2 = -width;
            this.path.rQuadTo(BitmapDescriptorFactory.HUE_RED, f2, f2, f2);
            float f3 = width * 2.0f;
            float f4 = f * 2.0f;
            this.path.rLineTo((((-(rectF.width() - f3)) / 2.0f) + f4) - width3, BitmapDescriptorFactory.HUE_RED);
            float f5 = -f;
            float f6 = f5 / 2.0f;
            float f7 = f5 * 2.0f;
            float f8 = (-width2) / 2.0f;
            this.path.rQuadTo(f6, BitmapDescriptorFactory.HUE_RED, f7, f8);
            this.path.rQuadTo(f6, f8, f7, f8);
            this.path.rLineTo(((-(rectF.width() - f3)) / 2.0f) + f4 + width3, BitmapDescriptorFactory.HUE_RED);
            this.path.rQuadTo(f2, BitmapDescriptorFactory.HUE_RED, f2, width);
            this.path.rLineTo(BitmapDescriptorFactory.HUE_RED, (width2 + height) - f3);
            this.path.rQuadTo(BitmapDescriptorFactory.HUE_RED, width, width, width);
            this.path.rLineTo(rectF.width() - f3, BitmapDescriptorFactory.HUE_RED);
            this.path.rQuadTo(width, BitmapDescriptorFactory.HUE_RED, width, f2);
            this.path.rLineTo(BitmapDescriptorFactory.HUE_RED, -(height - f3));
            this.path.close();
            canvas.drawPath(this.path, getThemedPaint("paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawPath(this.path, Theme.chat_actionBackgroundGradientDarkenPaint);
                return;
            }
            return;
        }
        RectF rectF2 = AndroidUtilities.rectTmp;
        float f9 = this.circleRadius;
        canvas.drawRoundRect(rectF2, f9, f9, getThemedPaint("paintChatActionBackground"));
        if (hasGradientService()) {
            float f10 = this.circleRadius;
            canvas.drawRoundRect(rectF2, f10, f10, Theme.chat_actionBackgroundGradientDarkenPaint);
        }
    }

    private void showReleaseState(boolean z, final View view) {
        AnimatorSet animatorSet = this.showReleaseAnimator;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.showReleaseAnimator.cancel();
        }
        if (z) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.swipeToReleaseProgress, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChatPullingDownDrawable.this.lambda$showReleaseState$0(view, valueAnimator);
                }
            });
            ofFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            ofFloat.setDuration(250L);
            this.bounceProgress = BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChatPullingDownDrawable.this.lambda$showReleaseState$1(view, valueAnimator);
                }
            });
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_BOTH;
            ofFloat2.setInterpolator(cubicBezierInterpolator);
            ofFloat2.setDuration(180L);
            ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, -0.5f);
            ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChatPullingDownDrawable.this.lambda$showReleaseState$2(view, valueAnimator);
                }
            });
            ofFloat3.setInterpolator(cubicBezierInterpolator);
            ofFloat3.setDuration(120L);
            ValueAnimator ofFloat4 = ValueAnimator.ofFloat(-0.5f, BitmapDescriptorFactory.HUE_RED);
            ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChatPullingDownDrawable.this.lambda$showReleaseState$3(view, valueAnimator);
                }
            });
            ofFloat4.setInterpolator(cubicBezierInterpolator);
            ofFloat4.setDuration(100L);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.showReleaseAnimator = animatorSet2;
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChatPullingDownDrawable.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ChatPullingDownDrawable chatPullingDownDrawable = ChatPullingDownDrawable.this;
                    chatPullingDownDrawable.bounceProgress = BitmapDescriptorFactory.HUE_RED;
                    chatPullingDownDrawable.swipeToReleaseProgress = 1.0f;
                    view.invalidate();
                    ChatPullingDownDrawable.this.fragmentView.invalidate();
                    Runnable runnable = ChatPullingDownDrawable.this.onAnimationFinishRunnable;
                    if (runnable != null) {
                        runnable.run();
                        ChatPullingDownDrawable.this.onAnimationFinishRunnable = null;
                    }
                }
            });
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playSequentially(ofFloat2, ofFloat3, ofFloat4);
            this.showReleaseAnimator.playTogether(ofFloat, animatorSet3);
            this.showReleaseAnimator.start();
            return;
        }
        ValueAnimator ofFloat5 = ValueAnimator.ofFloat(this.swipeToReleaseProgress, BitmapDescriptorFactory.HUE_RED);
        ofFloat5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatPullingDownDrawable.this.lambda$showReleaseState$4(view, valueAnimator);
            }
        });
        ofFloat5.setInterpolator(CubicBezierInterpolator.DEFAULT);
        ofFloat5.setDuration(220L);
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.showReleaseAnimator = animatorSet4;
        animatorSet4.playTogether(ofFloat5);
        this.showReleaseAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$0(View view, ValueAnimator valueAnimator) {
        this.swipeToReleaseProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        view.invalidate();
        this.fragmentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$1(View view, ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        view.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$2(View view, ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        view.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$3(View view, ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        view.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$4(View view, ValueAnimator valueAnimator) {
        this.swipeToReleaseProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.fragmentView.invalidate();
        view.invalidate();
    }

    private void drawArrow(Canvas canvas, float f, float f2, float f3) {
        canvas.save();
        float dpf2 = f3 / AndroidUtilities.dpf2(24.0f);
        canvas.scale(dpf2, dpf2, f, f2 - AndroidUtilities.m50dp(20));
        canvas.translate(f - AndroidUtilities.dp2(12.0f), f2 - AndroidUtilities.m50dp(12));
        canvas.drawLine(AndroidUtilities.dpf2(12.5f), AndroidUtilities.dpf2(4.0f), AndroidUtilities.dpf2(12.5f), AndroidUtilities.dpf2(22.0f), this.arrowPaint);
        canvas.drawLine(AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(12.0f), AndroidUtilities.dpf2(12.5f), AndroidUtilities.dpf2(3.5f), this.arrowPaint);
        canvas.drawLine(AndroidUtilities.dpf2(21.5f), AndroidUtilities.dpf2(12.0f), AndroidUtilities.dpf2(12.5f), AndroidUtilities.dpf2(3.5f), this.arrowPaint);
        canvas.restore();
    }

    public void onAttach() {
        this.imageReceiver.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
    }

    public void onDetach() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        this.imageReceiver.onDetachedFromWindow();
        this.lastProgress = BitmapDescriptorFactory.HUE_RED;
        this.lastHapticTime = 0L;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        TLRPC$Dialog tLRPC$Dialog;
        if (this.nextDialogId == 0 || (tLRPC$Dialog = MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.nextDialogId)) == null) {
            return;
        }
        this.counterDrawable.setCount(tLRPC$Dialog.unread_count, true);
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    public static TLRPC$Dialog getNextUnreadDialog(long j, int i, int i2, boolean z, int[] iArr) {
        ArrayList<TLRPC$Dialog> dialogs;
        DialogType dialogType;
        TLRPC$Dialog nextUnreadDialog;
        TLRPC$Dialog nextUnreadDialog2;
        MessagesController.DialogFilter dialogFilter;
        MessagesController messagesController = AccountInstance.getInstance(UserConfig.selectedAccount).getMessagesController();
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i;
            iArr[2] = i2;
        }
        TLRPC$Chat tLRPC$Chat = null;
        if (i2 != 0) {
            if (SortingFilter.isSortingFilter(false, i2)) {
                dialogFilter = messagesController.sortingDialogFiltersById.get(i2);
            } else if (SortingFilter.isSortingFilter(true, i2)) {
                dialogFilter = messagesController.archiveSortingDialogFiltersById.get(i2);
            } else {
                dialogFilter = messagesController.dialogFiltersById.get(i2);
            }
            if (dialogFilter == null) {
                return null;
            }
            dialogs = dialogFilter.dialogs;
        } else {
            dialogs = messagesController.getDialogs(i);
        }
        if (dialogs == null) {
            return null;
        }
        ToolsController toolsController = AccountInstance.getInstance(UserConfig.selectedAccount).getToolsController();
        if (DialogObject.isUserDialog(j)) {
            dialogType = DialogType.getDialogType(messagesController.getUser(Long.valueOf(j)));
        } else {
            dialogType = DialogType.getDialogType(messagesController.getChat(Long.valueOf(-j)));
        }
        int i3 = 0;
        while (i3 < dialogs.size()) {
            TLRPC$Dialog tLRPC$Dialog = dialogs.get(i3);
            TLRPC$Chat chat = DialogObject.isChatDialog(tLRPC$Dialog.f1505id) ? messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1505id)) : tLRPC$Chat;
            ToolsController toolsController2 = toolsController;
            TLRPC$User user = DialogObject.isUserDialog(tLRPC$Dialog.f1505id) ? messagesController.getUser(Long.valueOf(tLRPC$Dialog.f1505id)) : null;
            if ((chat != null || (user != null && !user.self && !UserObject.isReplyUser(user) && UserObject.isLive(user))) && tLRPC$Dialog.f1505id != j && tLRPC$Dialog.unread_count > 0) {
                if (dialogType == DialogType.getDialogType(user != null ? user : chat) && !messagesController.isPromoDialog(tLRPC$Dialog.f1505id, false) && (user != null || MessagesController.getRestrictionReason(chat.restriction_reason) == null)) {
                    return tLRPC$Dialog;
                }
            }
            i3++;
            toolsController = toolsController2;
            tLRPC$Chat = null;
        }
        ToolsController toolsController3 = toolsController;
        if (z) {
            if (i2 != 0) {
                for (int i4 = 0; i4 < messagesController.dialogFilters.size(); i4++) {
                    int i5 = messagesController.dialogFilters.get(i4).f1439id;
                    if (i2 != i5 && (nextUnreadDialog2 = getNextUnreadDialog(j, i, i5, false, iArr)) != null) {
                        if (iArr != null) {
                            iArr[0] = 1;
                        }
                        return nextUnreadDialog2;
                    }
                }
            }
            if (toolsController3.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()) {
                for (int i6 = 0; i6 < messagesController.dialogsByFolder.size(); i6++) {
                    int keyAt = messagesController.dialogsByFolder.keyAt(i6);
                    if (i != keyAt && (nextUnreadDialog = getNextUnreadDialog(j, keyAt, 0, false, iArr)) != null) {
                        if (iArr != null) {
                            iArr[0] = 1;
                        }
                        return nextUnreadDialog;
                    }
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public long getChatId() {
        return this.nextChat.f1499id;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBottomPanel(android.graphics.Canvas r17, int r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ChatPullingDownDrawable.drawBottomPanel(android.graphics.Canvas, int, int, int):void");
    }

    public void showBottomPanel(boolean z) {
        this.showBottomPanel = z;
        this.fragmentView.invalidate();
    }

    public boolean needDrawBottomPanel() {
        return (this.showBottomPanel || this.progressToBottomPanel > BitmapDescriptorFactory.HUE_RED) && !this.emptyStub && ToolsController.getInstance(this.currentAccount).isShowChannelBottomPanel();
    }

    public boolean animationIsRunning() {
        return this.swipeToReleaseProgress != 1.0f;
    }

    public void runOnAnimationFinish(Runnable runnable) {
        AnimatorSet animatorSet = this.showReleaseAnimator;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.showReleaseAnimator.cancel();
        }
        this.onAnimationFinishRunnable = runnable;
        this.showReleaseAnimator = new AnimatorSet();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.swipeToReleaseProgress, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatPullingDownDrawable.this.lambda$runOnAnimationFinish$5(valueAnimator);
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.bounceProgress, BitmapDescriptorFactory.HUE_RED);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatPullingDownDrawable.this.lambda$runOnAnimationFinish$6(valueAnimator);
            }
        });
        this.showReleaseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChatPullingDownDrawable.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatPullingDownDrawable chatPullingDownDrawable = ChatPullingDownDrawable.this;
                chatPullingDownDrawable.bounceProgress = BitmapDescriptorFactory.HUE_RED;
                chatPullingDownDrawable.swipeToReleaseProgress = 1.0f;
                View view = chatPullingDownDrawable.parentView;
                if (view != null) {
                    view.invalidate();
                }
                ChatPullingDownDrawable.this.fragmentView.invalidate();
                Runnable runnable2 = ChatPullingDownDrawable.this.onAnimationFinishRunnable;
                if (runnable2 != null) {
                    runnable2.run();
                    ChatPullingDownDrawable.this.onAnimationFinishRunnable = null;
                }
            }
        });
        this.showReleaseAnimator.playTogether(ofFloat, ofFloat2);
        this.showReleaseAnimator.setDuration(120L);
        this.showReleaseAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.showReleaseAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runOnAnimationFinish$5(ValueAnimator valueAnimator) {
        this.swipeToReleaseProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.fragmentView.invalidate();
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runOnAnimationFinish$6(ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    public void reset() {
        this.checkProgress = BitmapDescriptorFactory.HUE_RED;
        this.animateCheck = false;
    }

    private int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }

    private Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    private boolean hasGradientService() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider != null ? resourcesProvider.hasGradientService() : Theme.hasGradientService();
    }
}
