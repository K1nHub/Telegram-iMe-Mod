package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.regex.Pattern;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.EmojiPacksAlert;
import org.telegram.p043ui.Components.EmojiView;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.Premium.PremiumButtonView;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.ContentPreviewViewer;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
import org.telegram.tgnet.TLRPC$TL_emojiStatus;
import org.telegram.tgnet.TLRPC$TL_emojiStatusEmpty;
import org.telegram.tgnet.TLRPC$TL_emojiStatusUntil;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_inputDocument;
import org.telegram.tgnet.TLRPC$TL_inputPhoto;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetID;
import org.telegram.tgnet.TLRPC$TL_inputStickeredMediaDocument;
import org.telegram.tgnet.TLRPC$TL_inputStickeredMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_messages_getAttachedStickers;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSetInstallResultArchive;
import org.telegram.tgnet.TLRPC$TL_stickerPack;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$Vector;
/* renamed from: org.telegram.ui.Components.EmojiPacksAlert */
/* loaded from: classes6.dex */
public class EmojiPacksAlert extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private static Pattern urlPattern;
    private Adapter adapter;
    private int adaptiveEmojiColor;
    private ColorFilter adaptiveEmojiColorFilter;
    private TextView addButtonView;
    private LongSparseArray<AnimatedEmojiDrawable> animatedEmojiDrawables;
    private FrameLayout buttonsView;
    private ContentView contentView;
    private EmojiPacksLoader customEmojiPacks;
    private BaseFragment fragment;
    private GridLayoutManager gridLayoutManager;
    private boolean hasDescription;
    private AnimatedFloat highlightAlpha;
    int highlightEndPosition;
    private int highlightIndex;
    int highlightStartPosition;
    private float lastY;
    private boolean limitCount;
    private RecyclerListView listView;
    private ValueAnimator loadAnimator;
    private float loadT;
    boolean loaded;
    private View paddingView;
    private ActionBarPopupWindow popupWindow;
    private long premiumButtonClicked;
    private PremiumButtonView premiumButtonView;
    private ContentPreviewViewer.ContentPreviewViewerDelegate previewDelegate;
    private CircularProgressDrawable progressDrawable;
    private TextView removeButtonView;
    private RecyclerAnimationScrollHelper scrollHelper;
    private View shadowView;
    private boolean shown;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    protected void onButtonClicked(boolean z) {
    }

    protected void onCloseByLink() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void access$6500(EmojiPacksAlert emojiPacksAlert, int i) {
        emojiPacksAlert.onSubItemClick(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$1 */
    /* loaded from: classes6.dex */
    public class C49671 implements ContentPreviewViewer.ContentPreviewViewerDelegate {
        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean can() {
            return true;
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean canSchedule() {
            return false;
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$editAnimatedSticker(this, tLRPC$Document, rLottieDrawable, z);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$editMedia(this, tLRPC$Document, z);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public long getDialogId() {
            return 0L;
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ String getQuery(boolean z) {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$getQuery(this, z);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void gifAddedOrDeleted() {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$gifAddedOrDeleted(this);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ boolean isPhotoEditor() {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$isPhotoEditor(this);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ boolean isStoryReply() {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$isStoryReply(this);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ boolean needMenu() {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needMenu(this);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ boolean needOpen() {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needOpen(this);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ boolean needRemove() {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needRemove(this);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ boolean needRemoveFromRecent(TLRPC$Document tLRPC$Document) {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needRemoveFromRecent(this, tLRPC$Document);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void openKiklikoReport(String str) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$openKiklikoReport(this, str);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void openSet(TLRPC$InputStickerSet tLRPC$InputStickerSet, boolean z) {
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void remove(SendMessagesHelper.ImportingSticker importingSticker) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$remove(this, importingSticker);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void removeFromRecent(TLRPC$Document tLRPC$Document) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$removeFromRecent(this, tLRPC$Document);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void resetTouch() {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$resetTouch(this);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void sendGif(Object obj, Object obj2, boolean z, int i) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$sendGif(this, obj, obj2, z, i);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void sendKiklikoVideo(String str, String str2, boolean z, boolean z2, int i) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$sendKiklikoVideo(this, str, str2, z, z2, i);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void sendSticker(TLRPC$Document tLRPC$Document, String str, Object obj, boolean z, int i) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$sendSticker(this, tLRPC$Document, str, obj, z, i);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void setKiklikoAvatar(String str) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$setKiklikoAvatar(this, str);
        }

        C49671() {
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean needSend(int i) {
            return (EmojiPacksAlert.this.fragment instanceof ChatActivity) && ((ChatActivity) EmojiPacksAlert.this.fragment).canSendMessage() && (UserConfig.getInstance(UserConfig.selectedAccount).isPremium() || (((ChatActivity) EmojiPacksAlert.this.fragment).getCurrentUser() != null && UserObject.isUserSelf(((ChatActivity) EmojiPacksAlert.this.fragment).getCurrentUser())));
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void sendEmoji(TLRPC$Document tLRPC$Document) {
            if (EmojiPacksAlert.this.fragment instanceof ChatActivity) {
                ((ChatActivity) EmojiPacksAlert.this.fragment).sendAnimatedEmoji(tLRPC$Document, true, 0);
            }
            EmojiPacksAlert.this.onCloseByLink();
            EmojiPacksAlert.this.dismiss();
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean needCopy(TLRPC$Document tLRPC$Document) {
            return UserConfig.getInstance(UserConfig.selectedAccount).isPremium() && MessageObject.isAnimatedEmoji(tLRPC$Document);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void copyEmoji(TLRPC$Document tLRPC$Document) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(MessageObject.findAnimatedEmojiEmoticon(tLRPC$Document));
            valueOf.setSpan(new AnimatedEmojiSpan(tLRPC$Document, (Paint.FontMetricsInt) null), 0, valueOf.length(), 33);
            if (AndroidUtilities.addToClipboard(valueOf)) {
                BulletinFactory.m66of((FrameLayout) ((BottomSheet) EmojiPacksAlert.this).containerView, ((BottomSheet) EmojiPacksAlert.this).resourcesProvider).createCopyBulletin(LocaleController.getString("EmojiCopied", C3632R.string.EmojiCopied)).show();
            }
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public Boolean canSetAsStatus(TLRPC$Document tLRPC$Document) {
            TLRPC$User currentUser;
            if (UserConfig.getInstance(UserConfig.selectedAccount).isPremium() && MessageObject.isAnimatedEmoji(tLRPC$Document) && (currentUser = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser()) != null) {
                Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(currentUser);
                return Boolean.valueOf(tLRPC$Document != null && (emojiStatusDocumentId == null || emojiStatusDocumentId.longValue() != tLRPC$Document.f1610id));
            }
            return null;
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void setAsEmojiStatus(TLRPC$Document tLRPC$Document, Integer num) {
            TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil;
            if (tLRPC$Document == null) {
                tLRPC$TL_emojiStatusUntil = new TLRPC$TL_emojiStatusEmpty();
            } else if (num != null) {
                TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil2 = new TLRPC$TL_emojiStatusUntil();
                tLRPC$TL_emojiStatusUntil2.document_id = tLRPC$Document.f1610id;
                tLRPC$TL_emojiStatusUntil2.until = num.intValue();
                tLRPC$TL_emojiStatusUntil = tLRPC$TL_emojiStatusUntil2;
            } else {
                TLRPC$TL_emojiStatus tLRPC$TL_emojiStatus = new TLRPC$TL_emojiStatus();
                tLRPC$TL_emojiStatus.document_id = tLRPC$Document.f1610id;
                tLRPC$TL_emojiStatusUntil = tLRPC$TL_emojiStatus;
            }
            TLRPC$User currentUser = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
            final TLRPC$EmojiStatus tLRPC$TL_emojiStatusEmpty = currentUser == null ? new TLRPC$TL_emojiStatusEmpty() : currentUser.emoji_status;
            MessagesController.getInstance(((BottomSheet) EmojiPacksAlert.this).currentAccount).updateEmojiStatus(tLRPC$TL_emojiStatusUntil);
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.EmojiPacksAlert$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiPacksAlert.C49671.this.lambda$setAsEmojiStatus$0(tLRPC$TL_emojiStatusEmpty);
                }
            };
            if (tLRPC$Document != null) {
                BulletinFactory.m66of((FrameLayout) ((BottomSheet) EmojiPacksAlert.this).containerView, ((BottomSheet) EmojiPacksAlert.this).resourcesProvider).createEmojiBulletin(tLRPC$Document, LocaleController.getString("SetAsEmojiStatusInfo", C3632R.string.SetAsEmojiStatusInfo), LocaleController.getString("Undo", C3632R.string.Undo), runnable).show();
                return;
            }
            Bulletin.SimpleLayout simpleLayout = new Bulletin.SimpleLayout(EmojiPacksAlert.this.getContext(), ((BottomSheet) EmojiPacksAlert.this).resourcesProvider);
            simpleLayout.textView.setText(LocaleController.getString("RemoveStatusInfo", C3632R.string.RemoveStatusInfo));
            simpleLayout.imageView.setImageResource(C3632R.C3634drawable.msg_settings_premium);
            Bulletin.UndoButton undoButton = new Bulletin.UndoButton(EmojiPacksAlert.this.getContext(), true, ((BottomSheet) EmojiPacksAlert.this).resourcesProvider);
            undoButton.setUndoAction(runnable);
            simpleLayout.setButton(undoButton);
            Bulletin.make((FrameLayout) ((BottomSheet) EmojiPacksAlert.this).containerView, simpleLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setAsEmojiStatus$0(TLRPC$EmojiStatus tLRPC$EmojiStatus) {
            MessagesController.getInstance(((BottomSheet) EmojiPacksAlert.this).currentAccount).updateEmojiStatus(tLRPC$EmojiStatus);
        }

        @Override // org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean isInScheduleMode() {
            if (EmojiPacksAlert.this.fragment instanceof ChatActivity) {
                return ((ChatActivity) EmojiPacksAlert.this.fragment).isInScheduleMode();
            }
            return false;
        }
    }

    public EmojiPacksAlert(BaseFragment baseFragment, Context context, Theme.ResourcesProvider resourcesProvider, ArrayList<TLRPC$InputStickerSet> arrayList) {
        this(baseFragment, context, resourcesProvider, arrayList, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private EmojiPacksAlert(final org.telegram.p043ui.ActionBar.BaseFragment r21, final android.content.Context r22, org.telegram.p043ui.ActionBar.Theme.ResourcesProvider r23, final java.util.ArrayList<org.telegram.tgnet.TLRPC$InputStickerSet> r24, org.telegram.tgnet.TLObject r25) {
        /*
            Method dump skipped, instructions count: 629
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.EmojiPacksAlert.<init>(org.telegram.ui.ActionBar.BaseFragment, android.content.Context, org.telegram.ui.ActionBar.Theme$ResourcesProvider, java.util.ArrayList, org.telegram.tgnet.TLObject):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ArrayList arrayList, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, View view, int i) {
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = null;
        int i2 = 0;
        if (arrayList == null || arrayList.size() <= 1) {
            ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
            if (actionBarPopupWindow != null) {
                actionBarPopupWindow.dismiss();
                this.popupWindow = null;
            } else if ((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).getChatActivityEnterView().getVisibility() == 0 && (view instanceof EmojiImageView)) {
                AnimatedEmojiSpan animatedEmojiSpan = ((EmojiImageView) view).span;
                try {
                    TLRPC$Document tLRPC$Document = animatedEmojiSpan.document;
                    if (tLRPC$Document == null) {
                        tLRPC$Document = AnimatedEmojiDrawable.findDocument(this.currentAccount, animatedEmojiSpan.getDocumentId());
                    }
                    SpannableString spannableString = new SpannableString(MessageObject.findAnimatedEmojiEmoticon(tLRPC$Document));
                    spannableString.setSpan(animatedEmojiSpan, 0, spannableString.length(), 33);
                    ((ChatActivity) baseFragment).getChatActivityEnterView().messageEditText.getText().append((CharSequence) spannableString);
                    onCloseByLink();
                    dismiss();
                } catch (Exception unused) {
                }
                try {
                    view.performHapticFeedback(3, 1);
                } catch (Exception unused2) {
                }
            }
        } else if (SystemClock.elapsedRealtime() - this.premiumButtonClicked < 250) {
        } else {
            int i3 = 0;
            while (true) {
                ArrayList<EmojiView.CustomEmoji>[] arrayListArr = this.customEmojiPacks.data;
                if (i2 >= arrayListArr.length) {
                    break;
                }
                int size = arrayListArr[i2].size();
                if (this.customEmojiPacks.data.length > 1) {
                    size = Math.min(this.gridLayoutManager.getSpanCount() * 2, size);
                }
                i3 += size + 1 + 1;
                if (i < i3) {
                    break;
                }
                i2++;
            }
            ArrayList<TLRPC$TL_messages_stickerSet> arrayList2 = this.customEmojiPacks.stickerSets;
            if (arrayList2 != null && i2 < arrayList2.size()) {
                tLRPC$TL_messages_stickerSet = this.customEmojiPacks.stickerSets.get(i2);
            }
            if (tLRPC$TL_messages_stickerSet == null || tLRPC$TL_messages_stickerSet.set == null) {
                return;
            }
            ArrayList arrayList3 = new ArrayList();
            TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
            TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set;
            tLRPC$TL_inputStickerSetID.f1625id = tLRPC$StickerSet.f1636id;
            tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet.access_hash;
            arrayList3.add(tLRPC$TL_inputStickerSetID);
            new EmojiPacksAlert(baseFragment, getContext(), resourcesProvider, arrayList3) { // from class: org.telegram.ui.Components.EmojiPacksAlert.6
                @Override // org.telegram.p043ui.Components.EmojiPacksAlert
                protected void onCloseByLink() {
                    EmojiPacksAlert.this.dismiss();
                }
            }.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2(Context context, View view, int i) {
        final AnimatedEmojiSpan animatedEmojiSpan;
        if (!(view instanceof EmojiImageView) || (animatedEmojiSpan = ((EmojiImageView) view).span) == null) {
            return false;
        }
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), true, true);
        actionBarMenuSubItem.setItemHeight(48);
        actionBarMenuSubItem.setPadding(AndroidUtilities.m107dp(26), 0, AndroidUtilities.m107dp(26), 0);
        actionBarMenuSubItem.setText(LocaleController.getString("Copy", C3632R.string.Copy));
        actionBarMenuSubItem.getTextView().setTextSize(1, 14.4f);
        actionBarMenuSubItem.getTextView().setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EmojiPacksAlert.this.lambda$new$1(animatedEmojiSpan, view2);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        Drawable mutate = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.popup_fixed_alert).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground), PorterDuff.Mode.MULTIPLY));
        linearLayout.setBackground(mutate);
        linearLayout.addView(actionBarMenuSubItem);
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(linearLayout, -2, -2);
        this.popupWindow = actionBarPopupWindow;
        actionBarPopupWindow.setClippingEnabled(true);
        this.popupWindow.setLayoutInScreen(true);
        this.popupWindow.setInputMethodMode(2);
        this.popupWindow.setSoftInputMode(0);
        this.popupWindow.setOutsideTouchable(true);
        this.popupWindow.setAnimationStyle(C3632R.style.PopupAnimation);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        this.popupWindow.showAtLocation(view, 51, (iArr[0] - AndroidUtilities.m107dp(49)) + (view.getMeasuredWidth() / 2), iArr[1] - AndroidUtilities.m107dp(52));
        try {
            view.performHapticFeedback(0, 1);
        } catch (Exception unused) {
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(AnimatedEmojiSpan animatedEmojiSpan, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null) {
            return;
        }
        actionBarPopupWindow.dismiss();
        this.popupWindow = null;
        SpannableString spannableString = new SpannableString(MessageObject.findAnimatedEmojiEmoticon(AnimatedEmojiDrawable.findDocument(this.currentAccount, animatedEmojiSpan.getDocumentId())));
        spannableString.setSpan(animatedEmojiSpan, 0, spannableString.length(), 33);
        if (AndroidUtilities.addToClipboard(spannableString)) {
            BulletinFactory.m66of((FrameLayout) this.containerView, this.resourcesProvider).createCopyBulletin(LocaleController.getString("EmojiCopied", C3632R.string.EmojiCopied)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$3(RecyclerListView.OnItemClickListener onItemClickListener, View view, MotionEvent motionEvent) {
        return ContentPreviewViewer.getInstance().onTouch(motionEvent, this.listView, 0, onItemClickListener, this.previewDelegate, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        showPremiumAlert();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (ContentPreviewViewer.getInstance().isVisible()) {
            ContentPreviewViewer.getInstance().closeWithMenu();
        } else {
            super.onBackPressed();
        }
    }

    public void highlight(int i) {
        this.highlightIndex = i;
    }

    private void updateShowButton(boolean z) {
        boolean z2 = !this.shown && z;
        float m107dp = this.removeButtonView.getVisibility() == 0 ? AndroidUtilities.m107dp(19) : 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            ViewPropertyAnimator duration = this.buttonsView.animate().translationY(z ? m107dp : AndroidUtilities.m107dp(16)).alpha(z ? 1.0f : 0.0f).setDuration(250L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            this.shadowView.animate().translationY(z ? -(AndroidUtilities.m107dp(68) - m107dp) : 0.0f).alpha(z ? 1.0f : 0.0f).setDuration(250L).setInterpolator(cubicBezierInterpolator).start();
            ViewPropertyAnimator animate = this.listView.animate();
            if (!this.limitCount && !z) {
                f = AndroidUtilities.m107dp(68) - m107dp;
            }
            animate.translationY(f).setDuration(250L).setInterpolator(cubicBezierInterpolator).start();
        } else {
            this.buttonsView.setAlpha(z ? 1.0f : 0.0f);
            this.buttonsView.setTranslationY(z ? m107dp : AndroidUtilities.m107dp(16));
            this.shadowView.setAlpha(z ? 1.0f : 0.0f);
            this.shadowView.setTranslationY(z ? -(AndroidUtilities.m107dp(68) - m107dp) : 0.0f);
            RecyclerListView recyclerListView = this.listView;
            if (!this.limitCount && !z) {
                f = AndroidUtilities.m107dp(68) - m107dp;
            }
            recyclerListView.setTranslationY(f);
        }
        this.shown = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$ContentView */
    /* loaded from: classes6.dex */
    public class ContentView extends FrameLayout {
        boolean attached;
        private Boolean lastOpen;
        ArrayList<DrawingInBackgroundLine> lineDrawables;
        ArrayList<DrawingInBackgroundLine> lineDrawablesTmp;
        private Paint paint;
        private Path path;
        private final AnimatedFloat statusBarT;
        ArrayList<ArrayList<EmojiImageView>> unusedArrays;
        ArrayList<DrawingInBackgroundLine> unusedLineDrawables;
        SparseArray<ArrayList<EmojiImageView>> viewsGroupedByLines;

        public ContentView(Context context) {
            super(context);
            this.paint = new Paint();
            this.path = new Path();
            this.lastOpen = null;
            this.viewsGroupedByLines = new SparseArray<>();
            this.lineDrawables = new ArrayList<>();
            this.lineDrawablesTmp = new ArrayList<>();
            this.unusedArrays = new ArrayList<>();
            this.unusedLineDrawables = new ArrayList<>();
            this.statusBarT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            EmojiPacksAlert emojiPacksAlert;
            AnimatedEmojiSpan animatedEmojiSpan;
            if (this.attached) {
                this.paint.setColor(EmojiPacksAlert.this.getThemedColor(Theme.key_dialogBackground));
                Theme.applyDefaultShadow(this.paint);
                this.path.reset();
                float f = EmojiPacksAlert.this.lastY = emojiPacksAlert.getListTop();
                float f2 = this.statusBarT.set(f <= ((float) ((BottomSheet) EmojiPacksAlert.this).containerView.getPaddingTop()));
                float lerp = AndroidUtilities.lerp(f, (float) BitmapDescriptorFactory.HUE_RED, f2);
                float m108dp = AndroidUtilities.m108dp((1.0f - f2) * 14.0f);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(getPaddingLeft(), lerp, getWidth() - getPaddingRight(), getBottom() + m108dp);
                this.path.addRoundRect(rectF, m108dp, m108dp, Path.Direction.CW);
                canvas.drawPath(this.path, this.paint);
                boolean z = f2 > 0.5f;
                Boolean bool = this.lastOpen;
                if (bool == null || z != bool.booleanValue()) {
                    EmojiPacksAlert emojiPacksAlert2 = EmojiPacksAlert.this;
                    Boolean valueOf = Boolean.valueOf(z);
                    this.lastOpen = valueOf;
                    emojiPacksAlert2.updateLightStatusBar(valueOf.booleanValue());
                }
                Theme.dialogs_onlineCirclePaint.setColor(EmojiPacksAlert.this.getThemedColor(Theme.key_sheet_scrollUp));
                Theme.dialogs_onlineCirclePaint.setAlpha((int) (MathUtils.clamp(lerp / AndroidUtilities.m107dp(20), (float) BitmapDescriptorFactory.HUE_RED, 1.0f) * Theme.dialogs_onlineCirclePaint.getAlpha()));
                int m107dp = AndroidUtilities.m107dp(36);
                float m107dp2 = lerp + AndroidUtilities.m107dp(10);
                int i = 4;
                rectF.set((getMeasuredWidth() - m107dp) / 2, m107dp2, (getMeasuredWidth() + m107dp) / 2, AndroidUtilities.m107dp(4) + m107dp2);
                canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), Theme.dialogs_onlineCirclePaint);
                EmojiPacksAlert.this.shadowView.setVisibility((EmojiPacksAlert.this.listView.canScrollVertically(1) || EmojiPacksAlert.this.removeButtonView.getVisibility() == 0) ? 0 : 0);
                if (EmojiPacksAlert.this.listView != null) {
                    canvas.save();
                    canvas.translate(EmojiPacksAlert.this.listView.getLeft(), EmojiPacksAlert.this.listView.getY() + BitmapDescriptorFactory.HUE_RED);
                    canvas.clipRect(0, 0, EmojiPacksAlert.this.listView.getWidth(), EmojiPacksAlert.this.listView.getHeight());
                    canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, EmojiPacksAlert.this.listView.getWidth(), EmojiPacksAlert.this.listView.getHeight(), (int) (EmojiPacksAlert.this.listView.getAlpha() * 255.0f), 31);
                    for (int i2 = 0; i2 < this.viewsGroupedByLines.size(); i2++) {
                        ArrayList<EmojiImageView> valueAt = this.viewsGroupedByLines.valueAt(i2);
                        valueAt.clear();
                        this.unusedArrays.add(valueAt);
                    }
                    this.viewsGroupedByLines.clear();
                    for (int i3 = 0; i3 < EmojiPacksAlert.this.listView.getChildCount(); i3++) {
                        View childAt = EmojiPacksAlert.this.listView.getChildAt(i3);
                        if (childAt instanceof EmojiImageView) {
                            EmojiImageView emojiImageView = (EmojiImageView) childAt;
                            emojiImageView.updatePressedProgress();
                            if (EmojiPacksAlert.this.animatedEmojiDrawables != null && (animatedEmojiSpan = emojiImageView.span) != null) {
                                AnimatedEmojiDrawable animatedEmojiDrawable = (AnimatedEmojiDrawable) EmojiPacksAlert.this.animatedEmojiDrawables.get(animatedEmojiSpan.getDocumentId());
                                if (animatedEmojiDrawable != null) {
                                    EmojiPacksAlert emojiPacksAlert3 = EmojiPacksAlert.this;
                                    animatedEmojiDrawable.setColorFilter(emojiPacksAlert3.getAdaptiveEmojiColorFilter(emojiPacksAlert3.getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon)));
                                    ArrayList<EmojiImageView> arrayList = this.viewsGroupedByLines.get(childAt.getTop());
                                    if (arrayList == null) {
                                        if (!this.unusedArrays.isEmpty()) {
                                            ArrayList<ArrayList<EmojiImageView>> arrayList2 = this.unusedArrays;
                                            arrayList = arrayList2.remove(arrayList2.size() - 1);
                                        } else {
                                            arrayList = new ArrayList<>();
                                        }
                                        this.viewsGroupedByLines.put(childAt.getTop(), arrayList);
                                    }
                                    arrayList.add((EmojiImageView) childAt);
                                }
                            }
                        } else {
                            canvas.save();
                            canvas.translate(childAt.getLeft(), childAt.getTop());
                            childAt.draw(canvas);
                            canvas.restore();
                        }
                    }
                    this.lineDrawablesTmp.clear();
                    this.lineDrawablesTmp.addAll(this.lineDrawables);
                    this.lineDrawables.clear();
                    long currentTimeMillis = System.currentTimeMillis();
                    int i4 = 0;
                    while (true) {
                        DrawingInBackgroundLine drawingInBackgroundLine = null;
                        if (i4 >= this.viewsGroupedByLines.size()) {
                            break;
                        }
                        ArrayList<EmojiImageView> valueAt2 = this.viewsGroupedByLines.valueAt(i4);
                        EmojiImageView emojiImageView2 = valueAt2.get(0);
                        int childAdapterPosition = EmojiPacksAlert.this.listView.getChildAdapterPosition(emojiImageView2);
                        int i5 = 0;
                        while (true) {
                            if (i5 >= this.lineDrawablesTmp.size()) {
                                break;
                            } else if (this.lineDrawablesTmp.get(i5).position == childAdapterPosition) {
                                drawingInBackgroundLine = this.lineDrawablesTmp.get(i5);
                                this.lineDrawablesTmp.remove(i5);
                                break;
                            } else {
                                i5++;
                            }
                        }
                        if (drawingInBackgroundLine == null) {
                            if (!this.unusedLineDrawables.isEmpty()) {
                                ArrayList<DrawingInBackgroundLine> arrayList3 = this.unusedLineDrawables;
                                drawingInBackgroundLine = arrayList3.remove(arrayList3.size() - 1);
                            } else {
                                drawingInBackgroundLine = new DrawingInBackgroundLine();
                                drawingInBackgroundLine.setLayerNum(7);
                            }
                            drawingInBackgroundLine.position = childAdapterPosition;
                            drawingInBackgroundLine.onAttachToWindow();
                        }
                        this.lineDrawables.add(drawingInBackgroundLine);
                        drawingInBackgroundLine.imageViewEmojis = valueAt2;
                        canvas.save();
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, emojiImageView2.getY() + emojiImageView2.getPaddingTop());
                        drawingInBackgroundLine.draw(canvas, currentTimeMillis, getMeasuredWidth(), emojiImageView2.getMeasuredHeight() - emojiImageView2.getPaddingBottom(), 1.0f);
                        canvas.restore();
                        i4++;
                    }
                    for (int i6 = 0; i6 < this.lineDrawablesTmp.size(); i6++) {
                        if (this.unusedLineDrawables.size() < 3) {
                            this.unusedLineDrawables.add(this.lineDrawablesTmp.get(i6));
                            this.lineDrawablesTmp.get(i6).imageViewEmojis = null;
                            this.lineDrawablesTmp.get(i6).reset();
                        } else {
                            this.lineDrawablesTmp.get(i6).onDetachFromWindow();
                        }
                    }
                    this.lineDrawablesTmp.clear();
                    canvas.restore();
                    canvas.restore();
                    if (EmojiPacksAlert.this.listView.getAlpha() < 1.0f) {
                        int width = getWidth() / 2;
                        int height = (((int) m107dp2) + getHeight()) / 2;
                        int m107dp3 = AndroidUtilities.m107dp(16);
                        EmojiPacksAlert.this.progressDrawable.setAlpha((int) ((1.0f - EmojiPacksAlert.this.listView.getAlpha()) * 255.0f));
                        EmojiPacksAlert.this.progressDrawable.setBounds(width - m107dp3, height - m107dp3, width + m107dp3, height + m107dp3);
                        EmojiPacksAlert.this.progressDrawable.draw(canvas);
                        invalidate();
                    }
                }
                super.dispatchDraw(canvas);
            }
        }

        private AnimatedEmojiSpan[] getAnimatedEmojiSpans() {
            if (EmojiPacksAlert.this.listView == null) {
                return new AnimatedEmojiSpan[0];
            }
            AnimatedEmojiSpan[] animatedEmojiSpanArr = new AnimatedEmojiSpan[EmojiPacksAlert.this.listView.getChildCount()];
            for (int i = 0; i < EmojiPacksAlert.this.listView.getChildCount(); i++) {
                View childAt = EmojiPacksAlert.this.listView.getChildAt(i);
                if (childAt instanceof EmojiImageView) {
                    animatedEmojiSpanArr[i] = ((EmojiImageView) childAt).span;
                }
            }
            return animatedEmojiSpanArr;
        }

        public void updateEmojiDrawables() {
            EmojiPacksAlert.this.animatedEmojiDrawables = AnimatedEmojiSpan.update(3, this, getAnimatedEmojiSpans(), EmojiPacksAlert.this.animatedEmojiDrawables);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && motionEvent.getY() < EmojiPacksAlert.this.getListTop() - AndroidUtilities.m107dp(6)) {
                EmojiPacksAlert.this.dismiss();
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$ContentView$DrawingInBackgroundLine */
        /* loaded from: classes6.dex */
        class DrawingInBackgroundLine extends DrawingInBackgroundThreadDrawable {
            ArrayList<EmojiImageView> drawInBackgroundViews = new ArrayList<>();
            ArrayList<EmojiImageView> imageViewEmojis;
            public int position;

            DrawingInBackgroundLine() {
            }

            @Override // org.telegram.p043ui.Components.DrawingInBackgroundThreadDrawable
            public void prepareDraw(long j) {
                AnimatedEmojiDrawable animatedEmojiDrawable;
                this.drawInBackgroundViews.clear();
                for (int i = 0; i < this.imageViewEmojis.size(); i++) {
                    EmojiImageView emojiImageView = this.imageViewEmojis.get(i);
                    if (emojiImageView.span != null && (animatedEmojiDrawable = (AnimatedEmojiDrawable) EmojiPacksAlert.this.animatedEmojiDrawables.get(emojiImageView.span.getDocumentId())) != null && animatedEmojiDrawable.getImageReceiver() != null) {
                        animatedEmojiDrawable.update(j);
                        ImageReceiver.BackgroundThreadDrawHolder[] backgroundThreadDrawHolderArr = emojiImageView.backgroundThreadDrawHolder;
                        int i2 = this.threadIndex;
                        ImageReceiver imageReceiver = animatedEmojiDrawable.getImageReceiver();
                        ImageReceiver.BackgroundThreadDrawHolder[] backgroundThreadDrawHolderArr2 = emojiImageView.backgroundThreadDrawHolder;
                        int i3 = this.threadIndex;
                        backgroundThreadDrawHolderArr[i2] = imageReceiver.setDrawInBackgroundThread(backgroundThreadDrawHolderArr2[i3], i3);
                        emojiImageView.backgroundThreadDrawHolder[this.threadIndex].time = j;
                        animatedEmojiDrawable.setAlpha(255);
                        Rect rect = AndroidUtilities.rectTmp2;
                        rect.set(emojiImageView.getLeft() + emojiImageView.getPaddingLeft(), emojiImageView.getPaddingTop(), emojiImageView.getRight() - emojiImageView.getPaddingRight(), emojiImageView.getMeasuredHeight() - emojiImageView.getPaddingBottom());
                        emojiImageView.backgroundThreadDrawHolder[this.threadIndex].setBounds(rect);
                        EmojiPacksAlert emojiPacksAlert = EmojiPacksAlert.this;
                        animatedEmojiDrawable.setColorFilter(emojiPacksAlert.getAdaptiveEmojiColorFilter(emojiPacksAlert.getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon)));
                        emojiImageView.imageReceiver = animatedEmojiDrawable.getImageReceiver();
                        this.drawInBackgroundViews.add(emojiImageView);
                    }
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
                prepareDraw(java.lang.System.currentTimeMillis());
                drawInUiThread(r7, r12);
                reset();
             */
            /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
                return;
             */
            @Override // org.telegram.p043ui.Components.DrawingInBackgroundThreadDrawable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void draw(android.graphics.Canvas r7, long r8, int r10, int r11, float r12) {
                /*
                    r6 = this;
                    java.util.ArrayList<org.telegram.ui.Components.EmojiPacksAlert$EmojiImageView> r0 = r6.imageViewEmojis
                    if (r0 != 0) goto L5
                    return
                L5:
                    int r0 = r0.size()
                    r1 = 3
                    r2 = 0
                    r3 = 1
                    if (r0 <= r1) goto L17
                    int r0 = org.telegram.messenger.SharedConfig.getDevicePerformanceClass()
                    if (r0 != 0) goto L15
                    goto L17
                L15:
                    r0 = r2
                    goto L18
                L17:
                    r0 = r3
                L18:
                    if (r0 != 0) goto L55
                L1a:
                    java.util.ArrayList<org.telegram.ui.Components.EmojiPacksAlert$EmojiImageView> r1 = r6.imageViewEmojis
                    int r1 = r1.size()
                    if (r2 >= r1) goto L55
                    java.util.ArrayList<org.telegram.ui.Components.EmojiPacksAlert$EmojiImageView> r1 = r6.imageViewEmojis
                    java.lang.Object r1 = r1.get(r2)
                    org.telegram.ui.Components.EmojiPacksAlert$EmojiImageView r1 = (org.telegram.p043ui.Components.EmojiPacksAlert.EmojiImageView) r1
                    float r4 = org.telegram.p043ui.Components.EmojiPacksAlert.EmojiImageView.access$3300(r1)
                    r5 = 0
                    int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                    if (r4 != 0) goto L56
                    android.animation.ValueAnimator r4 = r1.backAnimator
                    if (r4 != 0) goto L56
                    float r4 = r1.getTranslationX()
                    int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                    if (r4 != 0) goto L56
                    float r4 = r1.getTranslationY()
                    int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                    if (r4 != 0) goto L56
                    float r1 = r1.getAlpha()
                    r4 = 1065353216(0x3f800000, float:1.0)
                    int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                    if (r1 == 0) goto L52
                    goto L56
                L52:
                    int r2 = r2 + 1
                    goto L1a
                L55:
                    r3 = r0
                L56:
                    if (r3 == 0) goto L66
                    long r8 = java.lang.System.currentTimeMillis()
                    r6.prepareDraw(r8)
                    r6.drawInUiThread(r7, r12)
                    r6.reset()
                    goto L69
                L66:
                    super.draw(r7, r8, r10, r11, r12)
                L69:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.EmojiPacksAlert.ContentView.DrawingInBackgroundLine.draw(android.graphics.Canvas, long, int, int, float):void");
            }

            @Override // org.telegram.p043ui.Components.DrawingInBackgroundThreadDrawable
            public void drawInBackground(Canvas canvas) {
                for (int i = 0; i < this.drawInBackgroundViews.size(); i++) {
                    EmojiImageView emojiImageView = this.drawInBackgroundViews.get(i);
                    emojiImageView.imageReceiver.draw(canvas, emojiImageView.backgroundThreadDrawHolder[this.threadIndex]);
                }
            }

            @Override // org.telegram.p043ui.Components.DrawingInBackgroundThreadDrawable
            protected void drawInUiThread(Canvas canvas, float f) {
                AnimatedEmojiDrawable animatedEmojiDrawable;
                if (this.imageViewEmojis != null) {
                    for (int i = 0; i < this.imageViewEmojis.size(); i++) {
                        EmojiImageView emojiImageView = this.imageViewEmojis.get(i);
                        if (emojiImageView.span != null && (animatedEmojiDrawable = (AnimatedEmojiDrawable) EmojiPacksAlert.this.animatedEmojiDrawables.get(emojiImageView.span.getDocumentId())) != null && animatedEmojiDrawable.getImageReceiver() != null && emojiImageView.imageReceiver != null) {
                            animatedEmojiDrawable.setAlpha((int) (255.0f * f * emojiImageView.getAlpha()));
                            float width = ((emojiImageView.getWidth() - emojiImageView.getPaddingLeft()) - emojiImageView.getPaddingRight()) / 2.0f;
                            float height = ((emojiImageView.getHeight() - emojiImageView.getPaddingTop()) - emojiImageView.getPaddingBottom()) / 2.0f;
                            float left = (emojiImageView.getLeft() + emojiImageView.getRight()) / 2.0f;
                            float paddingTop = emojiImageView.getPaddingTop() + height;
                            float f2 = emojiImageView.pressedProgress != BitmapDescriptorFactory.HUE_RED ? 1.0f * (((1.0f - emojiImageView.pressedProgress) * 0.2f) + 0.8f) : 1.0f;
                            animatedEmojiDrawable.setBounds((int) (left - ((emojiImageView.getScaleX() * width) * f2)), (int) (paddingTop - ((emojiImageView.getScaleY() * height) * f2)), (int) (left + (width * emojiImageView.getScaleX() * f2)), (int) (paddingTop + (height * emojiImageView.getScaleY() * f2)));
                            animatedEmojiDrawable.draw(canvas);
                        }
                    }
                }
            }

            @Override // org.telegram.p043ui.Components.DrawingInBackgroundThreadDrawable
            public void onFrameReady() {
                super.onFrameReady();
                for (int i = 0; i < this.drawInBackgroundViews.size(); i++) {
                    this.drawInBackgroundViews.get(i).backgroundThreadDrawHolder[this.threadIndex].release();
                }
                ((BottomSheet) EmojiPacksAlert.this).containerView.invalidate();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.attached = true;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.attached = false;
            for (int i = 0; i < this.lineDrawables.size(); i++) {
                this.lineDrawables.get(i).onDetachFromWindow();
            }
            for (int i2 = 0; i2 < this.unusedLineDrawables.size(); i2++) {
                this.unusedLineDrawables.get(i2).onDetachFromWindow();
            }
            this.lineDrawables.clear();
            AnimatedEmojiSpan.release(this, EmojiPacksAlert.this.animatedEmojiDrawables);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stickersDidLoad);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.stickersDidLoad);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.stickersDidLoad) {
            updateInstallment();
        }
    }

    public void showPremiumAlert() {
        BaseFragment baseFragment = this.fragment;
        if (baseFragment != null) {
            new PremiumFeatureBottomSheet(baseFragment, 11, false).show();
        } else if (getContext() instanceof LaunchActivity) {
            ((LaunchActivity) getContext()).lambda$runLinkRequest$94(new PremiumPreviewFragment(null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLightStatusBar(boolean z) {
        boolean z2 = AndroidUtilities.computePerceivedBrightness(getThemedColor(Theme.key_dialogBackground)) > 0.721f;
        boolean z3 = AndroidUtilities.computePerceivedBrightness(Theme.blendOver(getThemedColor(Theme.key_actionBarDefault), AndroidUtilities.DARK_STATUS_BAR_OVERLAY)) > 0.721f;
        if (!z) {
            z2 = z3;
        }
        AndroidUtilities.setLightStatusBar(getWindow(), z2);
    }

    public void updateInstallment() {
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof EmojiPackHeader) {
                EmojiPackHeader emojiPackHeader = (EmojiPackHeader) childAt;
                if (emojiPackHeader.set != null && emojiPackHeader.set.set != null) {
                    emojiPackHeader.toggle(MediaDataController.getInstance(this.currentAccount).isStickerPackInstalled(emojiPackHeader.set.set.f1636id), true);
                }
            }
        }
        updateButton();
    }

    public static void installSet(BaseFragment baseFragment, TLObject tLObject, boolean z) {
        installSet(baseFragment, tLObject, z, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0031 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void installSet(final org.telegram.p043ui.ActionBar.BaseFragment r11, org.telegram.tgnet.TLObject r12, final boolean r13, final org.telegram.messenger.Utilities.Callback<java.lang.Boolean> r14, final java.lang.Runnable r15) {
        /*
            if (r11 != 0) goto L5
            int r0 = org.telegram.messenger.UserConfig.selectedAccount
            goto L9
        L5:
            int r0 = r11.getCurrentAccount()
        L9:
            r7 = r0
            r0 = 0
            if (r11 != 0) goto Lf
            r4 = r0
            goto L14
        Lf:
            android.view.View r1 = r11.getFragmentView()
            r4 = r1
        L14:
            if (r12 != 0) goto L17
            return
        L17:
            boolean r1 = r12 instanceof org.telegram.tgnet.TLRPC$TL_messages_stickerSet
            if (r1 == 0) goto L20
            r1 = r12
            org.telegram.tgnet.TLRPC$TL_messages_stickerSet r1 = (org.telegram.tgnet.TLRPC$TL_messages_stickerSet) r1
            r6 = r1
            goto L21
        L20:
            r6 = r0
        L21:
            if (r6 == 0) goto L27
            org.telegram.tgnet.TLRPC$StickerSet r12 = r6.set
        L25:
            r2 = r12
            goto L2f
        L27:
            boolean r1 = r12 instanceof org.telegram.tgnet.TLRPC$StickerSet
            if (r1 == 0) goto L2e
            org.telegram.tgnet.TLRPC$StickerSet r12 = (org.telegram.tgnet.TLRPC$StickerSet) r12
            goto L25
        L2e:
            r2 = r0
        L2f:
            if (r2 != 0) goto L32
            return
        L32:
            org.telegram.messenger.MediaDataController r12 = org.telegram.messenger.MediaDataController.getInstance(r7)
            long r0 = r2.f1636id
            boolean r12 = r12.cancelRemovingStickerSet(r0)
            if (r12 == 0) goto L46
            if (r14 == 0) goto L45
            java.lang.Boolean r11 = java.lang.Boolean.TRUE
            r14.run(r11)
        L45:
            return
        L46:
            org.telegram.tgnet.TLRPC$TL_messages_installStickerSet r12 = new org.telegram.tgnet.TLRPC$TL_messages_installStickerSet
            r12.<init>()
            org.telegram.tgnet.TLRPC$TL_inputStickerSetID r0 = new org.telegram.tgnet.TLRPC$TL_inputStickerSetID
            r0.<init>()
            r12.stickerset = r0
            long r8 = r2.f1636id
            r0.f1625id = r8
            long r8 = r2.access_hash
            r0.access_hash = r8
            org.telegram.tgnet.ConnectionsManager r0 = org.telegram.tgnet.ConnectionsManager.getInstance(r7)
            org.telegram.ui.Components.EmojiPacksAlert$$ExternalSyntheticLambda9 r10 = new org.telegram.ui.Components.EmojiPacksAlert$$ExternalSyntheticLambda9
            r1 = r10
            r3 = r13
            r5 = r11
            r8 = r14
            r9 = r15
            r1.<init>()
            r0.sendRequest(r12, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.EmojiPacksAlert.installSet(org.telegram.ui.ActionBar.BaseFragment, org.telegram.tgnet.TLObject, boolean, org.telegram.messenger.Utilities$Callback, java.lang.Runnable):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$installSet$7(final TLRPC$StickerSet tLRPC$StickerSet, final boolean z, final View view, final BaseFragment baseFragment, final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, final int i, final Utilities.Callback callback, final Runnable runnable, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiPacksAlert$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                EmojiPacksAlert.lambda$installSet$6(TLRPC$StickerSet.this, tLRPC$TL_error, z, view, baseFragment, tLRPC$TL_messages_stickerSet, tLObject, i, callback, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$installSet$6(TLRPC$StickerSet tLRPC$StickerSet, TLRPC$TL_error tLRPC$TL_error, boolean z, View view, BaseFragment baseFragment, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, TLObject tLObject, int i, Utilities.Callback callback, final Runnable runnable) {
        int i2;
        if (tLRPC$StickerSet.masks) {
            i2 = 1;
        } else {
            i2 = tLRPC$StickerSet.emojis ? 5 : 0;
        }
        try {
            if (tLRPC$TL_error == null) {
                if (z && view != null) {
                    Bulletin.make(baseFragment, new StickerSetBulletinLayout(baseFragment.getFragmentView().getContext(), tLRPC$TL_messages_stickerSet == 0 ? tLRPC$StickerSet : tLRPC$TL_messages_stickerSet, 2, null, baseFragment.getResourceProvider()), (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).show();
                }
                if (tLObject instanceof TLRPC$TL_messages_stickerSetInstallResultArchive) {
                    MediaDataController.getInstance(i).processStickerSetInstallResultArchive(baseFragment, true, i2, (TLRPC$TL_messages_stickerSetInstallResultArchive) tLObject);
                }
                if (callback != null) {
                    callback.run(Boolean.TRUE);
                }
            } else if (view != null) {
                Toast.makeText(baseFragment.getFragmentView().getContext(), LocaleController.getString("ErrorOccurred", C3632R.string.ErrorOccurred), 0).show();
                if (callback != null) {
                    callback.run(Boolean.FALSE);
                }
            } else if (callback != null) {
                callback.run(Boolean.FALSE);
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        MediaDataController.getInstance(i).loadStickers(i2, false, true, false, new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiPacksAlert$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                EmojiPacksAlert.lambda$installSet$5(runnable, (ArrayList) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$installSet$5(Runnable runnable, ArrayList arrayList) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void uninstallSet(BaseFragment baseFragment, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, boolean z, Runnable runnable, boolean z2) {
        if (baseFragment == null || tLRPC$TL_messages_stickerSet == null || baseFragment.getFragmentView() == null) {
            return;
        }
        MediaDataController.getInstance(baseFragment.getCurrentAccount()).toggleStickerSet(baseFragment.getFragmentView().getContext(), tLRPC$TL_messages_stickerSet, 0, baseFragment, true, z, runnable, z2);
    }

    public static void uninstallSet(Context context, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, boolean z, Runnable runnable) {
        if (tLRPC$TL_messages_stickerSet == null) {
            return;
        }
        MediaDataController.getInstance(UserConfig.selectedAccount).toggleStickerSet(context, tLRPC$TL_messages_stickerSet, 0, null, true, z, runnable, true);
    }

    private void loadAnimation() {
        if (this.loadAnimator != null) {
            return;
        }
        this.loadAnimator = ValueAnimator.ofFloat(this.loadT, 1.0f);
        this.containerView.getY();
        this.loadAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                EmojiPacksAlert.this.lambda$loadAnimation$8(valueAnimator);
            }
        });
        this.loadAnimator.setDuration(250L);
        this.loadAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.loadAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAnimation$8(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.loadT = floatValue;
        this.listView.setAlpha(floatValue);
        this.addButtonView.setAlpha(this.loadT);
        this.removeButtonView.setAlpha(this.loadT);
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButton() {
        TLRPC$StickerSet tLRPC$StickerSet;
        if (this.buttonsView == null) {
            return;
        }
        ArrayList arrayList = this.customEmojiPacks.stickerSets == null ? new ArrayList() : new ArrayList(this.customEmojiPacks.stickerSets);
        int i = 0;
        while (i < arrayList.size()) {
            if (arrayList.get(i) == null) {
                arrayList.remove(i);
                i--;
            }
            i++;
        }
        MediaDataController mediaDataController = MediaDataController.getInstance(this.currentAccount);
        final ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) arrayList.get(i2);
            if (tLRPC$TL_messages_stickerSet != null && (tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set) != null) {
                if (!mediaDataController.isStickerPackInstalled(tLRPC$StickerSet.f1636id)) {
                    arrayList3.add(tLRPC$TL_messages_stickerSet);
                } else {
                    arrayList2.add(tLRPC$TL_messages_stickerSet);
                }
            }
        }
        final ArrayList arrayList4 = new ArrayList(arrayList3);
        boolean z = this.customEmojiPacks.inputStickerSets != null && arrayList.size() == this.customEmojiPacks.inputStickerSets.size();
        if (!this.loaded && z) {
            loadAnimation();
        }
        this.loaded = z;
        if (!z) {
            this.listView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        } else if (this.highlightIndex >= 0) {
            int findFirstVisibleItemPosition = this.gridLayoutManager.findFirstVisibleItemPosition();
            int setHeaderPosition = this.adapter.getSetHeaderPosition(this.highlightIndex);
            if (Math.abs(findFirstVisibleItemPosition - setHeaderPosition) > 54) {
                this.scrollHelper.setScrollDirection(findFirstVisibleItemPosition < setHeaderPosition ? 0 : 1);
                this.scrollHelper.scrollToPosition(setHeaderPosition, (AndroidUtilities.displaySize.y / 2) - AndroidUtilities.m107dp(170), false, true);
            } else {
                this.listView.smoothScrollToPosition(setHeaderPosition);
            }
            this.highlightStartPosition = this.adapter.getSetHeaderPosition(this.highlightIndex);
            this.highlightEndPosition = this.adapter.getSetEndPosition(this.highlightIndex);
            this.highlightAlpha.set(1.0f, true);
            this.listView.invalidate();
            this.highlightIndex = -1;
        }
        if (!this.loaded || this.limitCount) {
            this.premiumButtonView.setVisibility(8);
            this.addButtonView.setVisibility(8);
            this.removeButtonView.setVisibility(8);
            updateShowButton(false);
            return;
        }
        this.premiumButtonView.setVisibility(4);
        if (arrayList4.size() > 0) {
            this.addButtonView.setVisibility(0);
            this.removeButtonView.setVisibility(8);
            if (arrayList4.size() == 1) {
                this.addButtonView.setText(LocaleController.formatPluralString("AddManyEmojiCount", ((TLRPC$TL_messages_stickerSet) arrayList4.get(0)).documents.size(), new Object[0]));
            } else {
                this.addButtonView.setText(LocaleController.formatPluralString("AddManyEmojiPacksCount", arrayList4.size(), new Object[0]));
            }
            this.addButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EmojiPacksAlert.this.lambda$updateButton$10(arrayList4, view);
                }
            });
            updateShowButton(true);
        } else if (arrayList2.size() > 0) {
            this.addButtonView.setVisibility(8);
            this.removeButtonView.setVisibility(0);
            if (arrayList2.size() == 1) {
                this.removeButtonView.setText(LocaleController.formatPluralString("RemoveManyEmojiCount", ((TLRPC$TL_messages_stickerSet) arrayList2.get(0)).documents.size(), new Object[0]));
            } else {
                this.removeButtonView.setText(LocaleController.formatPluralString("RemoveManyEmojiPacksCount", arrayList2.size(), new Object[0]));
            }
            this.removeButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EmojiPacksAlert.this.lambda$updateButton$11(arrayList2, view);
                }
            });
            updateShowButton(true);
        } else {
            this.addButtonView.setVisibility(8);
            this.removeButtonView.setVisibility(8);
            updateShowButton(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$10(final ArrayList arrayList, View view) {
        final int size = arrayList.size();
        final int[] iArr = new int[2];
        for (int i = 0; i < arrayList.size(); i++) {
            installSet(this.fragment, (TLObject) arrayList.get(i), size == 1, size > 1 ? new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiPacksAlert$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    EmojiPacksAlert.this.lambda$updateButton$9(iArr, size, arrayList, (Boolean) obj);
                }
            } : null, null);
        }
        onButtonClicked(true);
        if (size <= 1) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$9(int[] iArr, int i, ArrayList arrayList, Boolean bool) {
        iArr[0] = iArr[0] + 1;
        if (bool.booleanValue()) {
            iArr[1] = iArr[1] + 1;
        }
        if (iArr[0] != i || iArr[1] <= 0) {
            return;
        }
        dismiss();
        Bulletin.make(this.fragment, new StickerSetBulletinLayout(this.fragment.getFragmentView().getContext(), (TLObject) arrayList.get(0), iArr[1], 2, null, this.fragment.getResourceProvider()), (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$11(ArrayList arrayList, View view) {
        dismiss();
        BaseFragment baseFragment = this.fragment;
        if (baseFragment != null) {
            MediaDataController.getInstance(baseFragment.getCurrentAccount()).removeMultipleStickerSets(this.fragment.getContext(), this.fragment, arrayList);
        } else {
            int i = 0;
            while (i < arrayList.size()) {
                uninstallSet(getContext(), (TLRPC$TL_messages_stickerSet) arrayList.get(i), i == 0, null);
                i++;
            }
        }
        onButtonClicked(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getListTop() {
        if (this.containerView == null) {
            return 0;
        }
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView == null || recyclerListView.getChildCount() < 1) {
            return this.containerView.getPaddingTop();
        }
        View childAt = this.listView.getChildAt(0);
        View view = this.paddingView;
        if (childAt != view) {
            return this.containerView.getPaddingTop();
        }
        return view.getBottom() + ((int) this.listView.getY());
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        RecyclerListView recyclerListView = this.listView;
        Adapter adapter = new Adapter(this, null);
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 4);
        this.customEmojiPacks.start();
        updateButton();
        BaseFragment baseFragment = this.fragment;
        MediaDataController.getInstance(baseFragment == null ? UserConfig.selectedAccount : baseFragment.getCurrentAccount()).checkStickers(5);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        EmojiPacksLoader emojiPacksLoader = this.customEmojiPacks;
        if (emojiPacksLoader != null) {
            emojiPacksLoader.recycle();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 4);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public int getContainerViewHeight() {
        RecyclerListView recyclerListView = this.listView;
        int measuredHeight = (recyclerListView == null ? 0 : recyclerListView.getMeasuredHeight()) - getListTop();
        ViewGroup viewGroup = this.containerView;
        return measuredHeight + (viewGroup != null ? viewGroup.getPaddingTop() : 0) + AndroidUtilities.navigationBarHeight + AndroidUtilities.m107dp(8);
    }

    /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$SeparatorView */
    /* loaded from: classes6.dex */
    class SeparatorView extends View {
        public SeparatorView(EmojiPacksAlert emojiPacksAlert, Context context) {
            super(context);
            setBackgroundColor(emojiPacksAlert.getThemedColor(Theme.key_chat_emojiPanelShadowLine));
            RecyclerView.LayoutParams layoutParams = new RecyclerView.LayoutParams(-1, AndroidUtilities.getShadowHeight());
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = AndroidUtilities.m107dp(14);
            setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$Adapter */
    /* loaded from: classes6.dex */
    public class Adapter extends RecyclerListView.SelectionAdapter {
        private Adapter() {
        }

        /* synthetic */ Adapter(EmojiPacksAlert emojiPacksAlert, C49671 c49671) {
            this();
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            if (i == 0) {
                view = EmojiPacksAlert.this.paddingView;
            } else {
                if (i == 1) {
                    view = new EmojiImageView(EmojiPacksAlert.this.getContext());
                } else if (i == 2) {
                    EmojiPacksAlert emojiPacksAlert = EmojiPacksAlert.this;
                    view = new EmojiPackHeader(emojiPacksAlert.getContext(), EmojiPacksAlert.this.customEmojiPacks.data.length <= 1);
                } else if (i == 3) {
                    view = new TextView(EmojiPacksAlert.this.getContext());
                } else if (i == 4) {
                    EmojiPacksAlert emojiPacksAlert2 = EmojiPacksAlert.this;
                    view = new SeparatorView(emojiPacksAlert2, emojiPacksAlert2.getContext());
                } else {
                    view = null;
                }
            }
            return new RecyclerListView.Holder(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            EmojiView.CustomEmoji customEmoji;
            ArrayList<TLRPC$Document> arrayList;
            int i2 = i - 1;
            int itemViewType = viewHolder.getItemViewType();
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = null;
            int i3 = 0;
            boolean z = true;
            if (itemViewType == 1) {
                if (EmojiPacksAlert.this.hasDescription) {
                    i2--;
                }
                EmojiImageView emojiImageView = (EmojiImageView) viewHolder.itemView;
                int i4 = 0;
                while (true) {
                    if (i3 >= EmojiPacksAlert.this.customEmojiPacks.data.length) {
                        customEmoji = null;
                        break;
                    }
                    int size = EmojiPacksAlert.this.customEmojiPacks.data[i3].size();
                    if (EmojiPacksAlert.this.customEmojiPacks.data.length > 1) {
                        size = Math.min(EmojiPacksAlert.this.gridLayoutManager.getSpanCount() * 2, size);
                    }
                    if (i2 > i4 && i2 <= i4 + size) {
                        customEmoji = EmojiPacksAlert.this.customEmojiPacks.data[i3].get((i2 - i4) - 1);
                        break;
                    } else {
                        i4 += size + 1 + 1;
                        i3++;
                    }
                }
                AnimatedEmojiSpan animatedEmojiSpan = emojiImageView.span;
                if ((animatedEmojiSpan != null || customEmoji == null) && ((customEmoji != null || animatedEmojiSpan == null) && (customEmoji == null || animatedEmojiSpan.documentId == customEmoji.documentId))) {
                    return;
                }
                if (customEmoji == null) {
                    emojiImageView.span = null;
                    return;
                }
                TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
                TLRPC$StickerSet tLRPC$StickerSet = customEmoji.stickerSet.set;
                tLRPC$TL_inputStickerSetID.f1625id = tLRPC$StickerSet.f1636id;
                tLRPC$TL_inputStickerSetID.short_name = tLRPC$StickerSet.short_name;
                tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet.access_hash;
                TLRPC$Document document = customEmoji.getDocument();
                if (document != null) {
                    emojiImageView.span = new AnimatedEmojiSpan(document, (Paint.FontMetricsInt) null);
                } else {
                    emojiImageView.span = new AnimatedEmojiSpan(customEmoji.documentId, (Paint.FontMetricsInt) null);
                }
            } else if (itemViewType == 2) {
                if (EmojiPacksAlert.this.hasDescription && i2 > 0) {
                    i2--;
                }
                int i5 = 0;
                int i6 = 0;
                while (i5 < EmojiPacksAlert.this.customEmojiPacks.data.length) {
                    int size2 = EmojiPacksAlert.this.customEmojiPacks.data[i5].size();
                    if (EmojiPacksAlert.this.customEmojiPacks.data.length > 1) {
                        size2 = Math.min(EmojiPacksAlert.this.gridLayoutManager.getSpanCount() * 2, size2);
                    }
                    if (i2 == i6) {
                        break;
                    }
                    i6 += size2 + 1 + 1;
                    i5++;
                }
                if (EmojiPacksAlert.this.customEmojiPacks.stickerSets != null && i5 < EmojiPacksAlert.this.customEmojiPacks.stickerSets.size()) {
                    tLRPC$TL_messages_stickerSet = EmojiPacksAlert.this.customEmojiPacks.stickerSets.get(i5);
                }
                if (tLRPC$TL_messages_stickerSet != null && tLRPC$TL_messages_stickerSet.documents != null) {
                    for (int i7 = 0; i7 < tLRPC$TL_messages_stickerSet.documents.size(); i7++) {
                        if (!MessageObject.isFreeEmoji(tLRPC$TL_messages_stickerSet.documents.get(i7))) {
                            break;
                        }
                    }
                }
                z = false;
                if (i5 < EmojiPacksAlert.this.customEmojiPacks.data.length) {
                    EmojiPackHeader emojiPackHeader = (EmojiPackHeader) viewHolder.itemView;
                    if (tLRPC$TL_messages_stickerSet != null && (arrayList = tLRPC$TL_messages_stickerSet.documents) != null) {
                        i3 = arrayList.size();
                    }
                    emojiPackHeader.set(tLRPC$TL_messages_stickerSet, i3, z);
                }
            } else {
                if (itemViewType != 3) {
                    return;
                }
                TextView textView = (TextView) viewHolder.itemView;
                textView.setTextSize(1, 13.0f);
                textView.setTextColor(EmojiPacksAlert.this.getThemedColor(Theme.key_chat_emojiPanelTrendingDescription));
                textView.setText(AndroidUtilities.replaceTags(LocaleController.getString("PremiumPreviewEmojiPack", C3632R.string.PremiumPreviewEmojiPack)));
                textView.setPadding(AndroidUtilities.m107dp(14), 0, AndroidUtilities.m107dp(30), AndroidUtilities.m107dp(14));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 0;
            }
            int i2 = i - 1;
            if (EmojiPacksAlert.this.hasDescription) {
                if (i2 == 1) {
                    return 3;
                }
                if (i2 > 0) {
                    i2--;
                }
            }
            int i3 = 0;
            for (int i4 = 0; i4 < EmojiPacksAlert.this.customEmojiPacks.data.length; i4++) {
                if (i2 == i3) {
                    return 2;
                }
                int size = EmojiPacksAlert.this.customEmojiPacks.data[i4].size();
                if (EmojiPacksAlert.this.customEmojiPacks.data.length > 1) {
                    size = Math.min(EmojiPacksAlert.this.gridLayoutManager.getSpanCount() * 2, size);
                }
                int i5 = i3 + size + 1;
                if (i2 == i5) {
                    return 4;
                }
                i3 = i5 + 1;
            }
            return 1;
        }

        public int getSetHeaderPosition(int i) {
            int i2 = EmojiPacksAlert.this.hasDescription ? 2 : 1;
            for (int i3 = 0; i3 < EmojiPacksAlert.this.customEmojiPacks.data.length && i3 != i; i3++) {
                int size = EmojiPacksAlert.this.customEmojiPacks.data[i3].size();
                if (EmojiPacksAlert.this.customEmojiPacks.data.length > 1) {
                    size = Math.min(EmojiPacksAlert.this.gridLayoutManager.getSpanCount() * 2, size);
                }
                i2 += size + 1 + 1;
            }
            return i2;
        }

        public int getSetEndPosition(int i) {
            int i2 = EmojiPacksAlert.this.hasDescription ? 2 : 1;
            for (int i3 = 0; i3 < EmojiPacksAlert.this.customEmojiPacks.data.length; i3++) {
                int size = EmojiPacksAlert.this.customEmojiPacks.data[i3].size();
                if (EmojiPacksAlert.this.customEmojiPacks.data.length > 1) {
                    size = Math.min(EmojiPacksAlert.this.gridLayoutManager.getSpanCount() * 2, size);
                }
                if (i3 == i) {
                    return i2 + size + 1;
                }
                i2 += size + 1 + 1;
            }
            return i2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            EmojiPacksAlert emojiPacksAlert = EmojiPacksAlert.this;
            emojiPacksAlert.hasDescription = !UserConfig.getInstance(((BottomSheet) emojiPacksAlert).currentAccount).isPremium() && EmojiPacksAlert.this.customEmojiPacks.stickerSets != null && EmojiPacksAlert.this.customEmojiPacks.stickerSets.size() == 1 && MessageObject.isPremiumEmojiPack(EmojiPacksAlert.this.customEmojiPacks.stickerSets.get(0));
            return (EmojiPacksAlert.this.hasDescription ? 1 : 0) + 1 + EmojiPacksAlert.this.customEmojiPacks.getItemsCount() + Math.max(0, EmojiPacksAlert.this.customEmojiPacks.data.length - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSubItemClick(int i) {
        ArrayList<TLRPC$TL_messages_stickerSet> arrayList;
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet;
        String str;
        EmojiPacksLoader emojiPacksLoader = this.customEmojiPacks;
        if (emojiPacksLoader == null || (arrayList = emojiPacksLoader.stickerSets) == null || arrayList.isEmpty()) {
            return;
        }
        TLRPC$StickerSet tLRPC$StickerSet = this.customEmojiPacks.stickerSets.get(0).set;
        if (tLRPC$StickerSet != null && tLRPC$StickerSet.emojis) {
            str = "https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/addemoji/" + tLRPC$TL_messages_stickerSet.set.short_name;
        } else {
            str = "https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/addstickers/" + tLRPC$TL_messages_stickerSet.set.short_name;
        }
        String str2 = str;
        if (i != 1) {
            if (i == 2) {
                try {
                    AndroidUtilities.addToClipboard(str2);
                    BulletinFactory.m66of((FrameLayout) this.containerView, this.resourcesProvider).createCopyLinkBulletin().show();
                    return;
                } catch (Exception e) {
                    FileLog.m102e(e);
                    return;
                }
            }
            return;
        }
        BaseFragment baseFragment = this.fragment;
        Context parentActivity = baseFragment != null ? baseFragment.getParentActivity() : null;
        if (parentActivity == null) {
            parentActivity = getContext();
        }
        DialogC49748 dialogC49748 = new DialogC49748(parentActivity, null, str2, false, str2, false, this.resourcesProvider);
        BaseFragment baseFragment2 = this.fragment;
        if (baseFragment2 != null) {
            baseFragment2.showDialog(dialogC49748);
        } else {
            dialogC49748.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$8 */
    /* loaded from: classes6.dex */
    public class DialogC49748 extends ShareAlert {
        DialogC49748(Context context, ArrayList arrayList, String str, boolean z, String str2, boolean z2, Theme.ResourcesProvider resourcesProvider) {
            super(context, arrayList, str, z, str2, z2, resourcesProvider);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.ShareAlert
        public void onSend(final androidx.collection.LongSparseArray<TLRPC$Dialog> longSparseArray, final int i, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiPacksAlert$8$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiPacksAlert.DialogC49748.this.lambda$onSend$0(longSparseArray, i);
                }
            }, 100L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSend$0(androidx.collection.LongSparseArray longSparseArray, int i) {
            UndoView undoView = EmojiPacksAlert.this.fragment instanceof ChatActivity ? ((ChatActivity) EmojiPacksAlert.this.fragment).getUndoView() : EmojiPacksAlert.this.fragment instanceof ProfileActivity ? ((ProfileActivity) EmojiPacksAlert.this.fragment).getUndoView() : null;
            if (undoView != null) {
                if (longSparseArray.size() == 1) {
                    undoView.showWithAction(((TLRPC$Dialog) longSparseArray.valueAt(0)).f1608id, 53, Integer.valueOf(i));
                } else {
                    undoView.showWithAction(0L, 53, Integer.valueOf(i), Integer.valueOf(longSparseArray.size()), (Runnable) null, (Runnable) null);
                }
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$EmojiImageView */
    /* loaded from: classes6.dex */
    public static class EmojiImageView extends View {
        ValueAnimator backAnimator;
        public ImageReceiver.BackgroundThreadDrawHolder[] backgroundThreadDrawHolder;
        public ImageReceiver imageReceiver;
        private float pressedProgress;
        public AnimatedEmojiSpan span;

        public EmojiImageView(Context context) {
            super(context);
            this.backgroundThreadDrawHolder = new ImageReceiver.BackgroundThreadDrawHolder[2];
        }

        public TLRPC$Document getDocument() {
            AnimatedEmojiSpan animatedEmojiSpan = this.span;
            if (animatedEmojiSpan != null) {
                TLRPC$Document tLRPC$Document = animatedEmojiSpan.document;
                if (tLRPC$Document == null) {
                    return AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, animatedEmojiSpan.getDocumentId());
                }
                return tLRPC$Document;
            }
            return null;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setPadding(AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2));
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824));
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            ValueAnimator valueAnimator;
            if (isPressed() != z) {
                super.setPressed(z);
                invalidate();
                if (z && (valueAnimator = this.backAnimator) != null) {
                    valueAnimator.removeAllListeners();
                    this.backAnimator.cancel();
                }
                if (z) {
                    return;
                }
                float f = this.pressedProgress;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, BitmapDescriptorFactory.HUE_RED);
                    this.backAnimator = ofFloat;
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiImageView$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            EmojiPacksAlert.EmojiImageView.this.lambda$setPressed$0(valueAnimator2);
                        }
                    });
                    this.backAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiPacksAlert.EmojiImageView.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            EmojiImageView.this.backAnimator = null;
                        }
                    });
                    this.backAnimator.setInterpolator(new OvershootInterpolator(5.0f));
                    this.backAnimator.setDuration(350L);
                    this.backAnimator.start();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setPressed$0(ValueAnimator valueAnimator) {
            this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (getParent() instanceof View) {
                ((View) getParent()).invalidate();
            }
        }

        public void updatePressedProgress() {
            if (isPressed()) {
                float f = this.pressedProgress;
                if (f != 1.0f) {
                    this.pressedProgress = Utilities.clamp(f + 0.16f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    invalidate();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$EmojiPackHeader */
    /* loaded from: classes6.dex */
    public class EmojiPackHeader extends FrameLayout {
        public TextView addButtonView;
        private ValueAnimator animator;
        public BaseFragment dummyFragment;
        public ActionBarMenuItem optionsButton;
        public TextView removeButtonView;
        private TLRPC$TL_messages_stickerSet set;
        private boolean single;
        public TextView subtitleView;
        public LinkSpanDrawable.LinksTextView titleView;
        private float toggleT;
        private boolean toggled;
        public PremiumButtonView unlockButtonView;

        public EmojiPackHeader(Context context, boolean z) {
            super(context);
            float f;
            float f2;
            this.dummyFragment = new BaseFragment() { // from class: org.telegram.ui.Components.EmojiPacksAlert.EmojiPackHeader.1
                @Override // org.telegram.p043ui.ActionBar.BaseFragment
                public int getCurrentAccount() {
                    return this.currentAccount;
                }

                @Override // org.telegram.p043ui.ActionBar.BaseFragment
                public View getFragmentView() {
                    return ((BottomSheet) EmojiPacksAlert.this).containerView;
                }

                @Override // org.telegram.p043ui.ActionBar.BaseFragment
                public FrameLayout getLayoutContainer() {
                    return (FrameLayout) ((BottomSheet) EmojiPacksAlert.this).containerView;
                }

                @Override // org.telegram.p043ui.ActionBar.BaseFragment
                public Theme.ResourcesProvider getResourceProvider() {
                    return ((BottomSheet) EmojiPacksAlert.this).resourcesProvider;
                }
            };
            this.toggled = false;
            this.toggleT = BitmapDescriptorFactory.HUE_RED;
            this.single = z;
            if (z) {
                f = 32.0f;
            } else {
                if (UserConfig.getInstance(((BottomSheet) EmojiPacksAlert.this).currentAccount).isPremium()) {
                    f2 = 8.0f;
                } else {
                    PremiumButtonView premiumButtonView = new PremiumButtonView(context, AndroidUtilities.m107dp(4), false, ((BottomSheet) EmojiPacksAlert.this).resourcesProvider);
                    this.unlockButtonView = premiumButtonView;
                    premiumButtonView.setButton(LocaleController.getString("Unlock", C3632R.string.Unlock), new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPackHeader$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            EmojiPacksAlert.EmojiPackHeader.this.lambda$new$0(view);
                        }
                    });
                    this.unlockButtonView.setIcon(C3632R.raw.unlock_icon);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.unlockButtonView.getIconView().getLayoutParams();
                    marginLayoutParams.leftMargin = AndroidUtilities.m107dp(1);
                    marginLayoutParams.topMargin = AndroidUtilities.m107dp(1);
                    int m107dp = AndroidUtilities.m107dp(20);
                    marginLayoutParams.height = m107dp;
                    marginLayoutParams.width = m107dp;
                    ((ViewGroup.MarginLayoutParams) this.unlockButtonView.getTextView().getLayoutParams()).leftMargin = AndroidUtilities.m107dp(3);
                    this.unlockButtonView.getChildAt(0).setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
                    addView(this.unlockButtonView, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, 8388661, BitmapDescriptorFactory.HUE_RED, 15.66f, 5.66f, BitmapDescriptorFactory.HUE_RED));
                    this.unlockButtonView.measure(View.MeasureSpec.makeMeasureSpec(99999, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(28), 1073741824));
                    f2 = (this.unlockButtonView.getMeasuredWidth() + AndroidUtilities.m107dp(16)) / AndroidUtilities.density;
                }
                TextView textView = new TextView(context);
                this.addButtonView = textView;
                textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.addButtonView.setTextColor(EmojiPacksAlert.this.getThemedColor(Theme.key_featuredStickers_buttonText));
                TextView textView2 = this.addButtonView;
                int i = Theme.key_featuredStickers_addButton;
                textView2.setBackground(Theme.AdaptiveRipple.filledRect(EmojiPacksAlert.this.getThemedColor(i), 4.0f));
                this.addButtonView.setText(LocaleController.getString("Add", C3632R.string.Add));
                this.addButtonView.setPadding(AndroidUtilities.m107dp(18), 0, AndroidUtilities.m107dp(18), 0);
                this.addButtonView.setGravity(17);
                this.addButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPackHeader$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        EmojiPacksAlert.EmojiPackHeader.this.lambda$new$1(view);
                    }
                });
                addView(this.addButtonView, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, 8388661, BitmapDescriptorFactory.HUE_RED, 15.66f, 5.66f, BitmapDescriptorFactory.HUE_RED));
                this.addButtonView.measure(View.MeasureSpec.makeMeasureSpec(99999, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(28), 1073741824));
                float max = Math.max(f2, (this.addButtonView.getMeasuredWidth() + AndroidUtilities.m107dp(16)) / AndroidUtilities.density);
                TextView textView3 = new TextView(context);
                this.removeButtonView = textView3;
                textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.removeButtonView.setTextColor(EmojiPacksAlert.this.getThemedColor(i));
                this.removeButtonView.setBackground(Theme.createRadSelectorDrawable(268435455 & EmojiPacksAlert.this.getThemedColor(i), 4, 4));
                this.removeButtonView.setText(LocaleController.getString("StickersRemove", C3632R.string.StickersRemove));
                this.removeButtonView.setPadding(AndroidUtilities.m107dp(12), 0, AndroidUtilities.m107dp(12), 0);
                this.removeButtonView.setGravity(17);
                this.removeButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPackHeader$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        EmojiPacksAlert.EmojiPackHeader.this.lambda$new$3(view);
                    }
                });
                this.removeButtonView.setClickable(false);
                addView(this.removeButtonView, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, 8388661, BitmapDescriptorFactory.HUE_RED, 15.66f, 5.66f, BitmapDescriptorFactory.HUE_RED));
                this.removeButtonView.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.removeButtonView.setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.removeButtonView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.removeButtonView.measure(View.MeasureSpec.makeMeasureSpec(99999, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(28), 1073741824));
                f = Math.max(max, (this.removeButtonView.getMeasuredWidth() + AndroidUtilities.m107dp(16)) / AndroidUtilities.density);
            }
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, ((BottomSheet) EmojiPacksAlert.this).resourcesProvider);
            this.titleView = linksTextView;
            linksTextView.setPadding(AndroidUtilities.m107dp(2), 0, AndroidUtilities.m107dp(2), 0);
            this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.titleView.setEllipsize(TextUtils.TruncateAt.END);
            this.titleView.setSingleLine(true);
            this.titleView.setLines(1);
            this.titleView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, ((BottomSheet) EmojiPacksAlert.this).resourcesProvider));
            this.titleView.setTextColor(EmojiPacksAlert.this.getThemedColor(Theme.key_dialogTextBlack));
            if (z) {
                this.titleView.setTextSize(1, 20.0f);
                addView(this.titleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388659, 12.0f, 11.0f, f, BitmapDescriptorFactory.HUE_RED));
            } else {
                this.titleView.setTextSize(1, 17.0f);
                addView(this.titleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388659, 6.0f, 10.0f, f, BitmapDescriptorFactory.HUE_RED));
            }
            if (!z) {
                TextView textView4 = new TextView(context);
                this.subtitleView = textView4;
                textView4.setTextSize(1, 13.0f);
                this.subtitleView.setTextColor(EmojiPacksAlert.this.getThemedColor(Theme.key_dialogTextGray2));
                this.subtitleView.setEllipsize(TextUtils.TruncateAt.END);
                this.subtitleView.setSingleLine(true);
                this.subtitleView.setLines(1);
                addView(this.subtitleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388659, 8.0f, 31.66f, f, BitmapDescriptorFactory.HUE_RED));
            }
            if (z) {
                ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, (ActionBarMenu) null, 0, EmojiPacksAlert.this.getThemedColor(Theme.key_sheet_other), ((BottomSheet) EmojiPacksAlert.this).resourcesProvider);
                this.optionsButton = actionBarMenuItem;
                actionBarMenuItem.setLongClickEnabled(false);
                this.optionsButton.setSubMenuOpenSide(2);
                this.optionsButton.setIcon(C3632R.C3634drawable.ic_ab_other);
                this.optionsButton.setBackgroundDrawable(Theme.createSelectorDrawable(EmojiPacksAlert.this.getThemedColor(Theme.key_player_actionBarSelector), 1));
                addView(this.optionsButton, LayoutHelper.createFrame(40, 40.0f, 53, (float) BitmapDescriptorFactory.HUE_RED, 5.0f, 5.0f - (((BottomSheet) EmojiPacksAlert.this).backgroundPaddingLeft / AndroidUtilities.density), (float) BitmapDescriptorFactory.HUE_RED));
                this.optionsButton.addSubItem(1, C3632R.C3634drawable.msg_share, LocaleController.getString("StickersShare", C3632R.string.StickersShare));
                this.optionsButton.addSubItem(2, C3632R.C3634drawable.msg_link, LocaleController.getString("CopyLink", C3632R.string.CopyLink));
                this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPackHeader$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        EmojiPacksAlert.EmojiPackHeader.this.lambda$new$4(view);
                    }
                });
                this.optionsButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPackHeader$$ExternalSyntheticLambda6
                    @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
                    public final void onItemClick(int i2) {
                        EmojiPacksAlert.access$6500(EmojiPacksAlert.this, i2);
                    }
                });
                this.optionsButton.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            EmojiPacksAlert.this.premiumButtonClicked = SystemClock.elapsedRealtime();
            EmojiPacksAlert.this.showPremiumAlert();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            EmojiPacksAlert.installSet(this.dummyFragment, this.set, true);
            toggle(true, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            EmojiPacksAlert.uninstallSet(this.dummyFragment, this.set, true, new Runnable() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPackHeader$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiPacksAlert.EmojiPackHeader.this.lambda$new$2();
                }
            }, true);
            toggle(false, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2() {
            toggle(true, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(View view) {
            this.optionsButton.toggleSubMenu();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void toggle(boolean z, boolean z2) {
            if (this.toggled == z) {
                return;
            }
            this.toggled = z;
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.animator = null;
            }
            TextView textView = this.addButtonView;
            if (textView == null || this.removeButtonView == null) {
                return;
            }
            textView.setClickable(!z);
            this.removeButtonView.setClickable(z);
            if (z2) {
                float[] fArr = new float[2];
                fArr[0] = this.toggleT;
                fArr[1] = z ? 1.0f : 0.0f;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                this.animator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPackHeader$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        EmojiPacksAlert.EmojiPackHeader.this.lambda$toggle$6(valueAnimator2);
                    }
                });
                this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.animator.setDuration(250L);
                this.animator.start();
                return;
            }
            this.toggleT = z ? 1.0f : 0.0f;
            this.addButtonView.setScaleX(z ? 0.0f : 1.0f);
            this.addButtonView.setScaleY(z ? 0.0f : 1.0f);
            this.addButtonView.setAlpha(z ? 0.0f : 1.0f);
            this.removeButtonView.setScaleX(z ? 1.0f : 0.0f);
            this.removeButtonView.setScaleY(z ? 1.0f : 0.0f);
            this.removeButtonView.setAlpha(z ? 1.0f : 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$toggle$6(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.toggleT = floatValue;
            this.addButtonView.setScaleX(1.0f - floatValue);
            this.addButtonView.setScaleY(1.0f - this.toggleT);
            this.addButtonView.setAlpha(1.0f - this.toggleT);
            this.removeButtonView.setScaleX(this.toggleT);
            this.removeButtonView.setScaleY(this.toggleT);
            this.removeButtonView.setAlpha(this.toggleT);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00f1  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void set(org.telegram.tgnet.TLRPC$TL_messages_stickerSet r10, int r11, boolean r12) {
            /*
                Method dump skipped, instructions count: 273
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.EmojiPacksAlert.EmojiPackHeader.set(org.telegram.tgnet.TLRPC$TL_messages_stickerSet, int, boolean):void");
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(this.single ? 42 : 56), 1073741824));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$LinkMovementMethodMy */
    /* loaded from: classes6.dex */
    public static class LinkMovementMethodMy extends LinkMovementMethod {
        private LinkMovementMethodMy() {
        }

        /* synthetic */ LinkMovementMethodMy(C49671 c49671) {
            this();
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            try {
                boolean onTouchEvent = super.onTouchEvent(textView, spannable, motionEvent);
                if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                    Selection.removeSelection(spannable);
                }
                return onTouchEvent;
            } catch (Exception e) {
                FileLog.m102e(e);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.EmojiPacksAlert$EmojiPacksLoader */
    /* loaded from: classes6.dex */
    public class EmojiPacksLoader implements NotificationCenter.NotificationCenterDelegate {
        private int currentAccount;
        public ArrayList<EmojiView.CustomEmoji>[] data;
        public ArrayList<TLRPC$InputStickerSet> inputStickerSets;
        public TLObject parentObject;
        private boolean started = false;
        public ArrayList<TLRPC$TL_messages_stickerSet> stickerSets;

        protected void onUpdate() {
            throw null;
        }

        public EmojiPacksLoader(int i, ArrayList<TLRPC$InputStickerSet> arrayList, TLObject tLObject) {
            this.currentAccount = i;
            if (arrayList == null && tLObject == null) {
                arrayList = new ArrayList<>();
            }
            this.inputStickerSets = arrayList;
            this.parentObject = tLObject;
        }

        public void start() {
            if (this.started) {
                return;
            }
            this.started = true;
            init();
        }

        public void init() {
            ArrayList<TLRPC$InputStickerSet> arrayList;
            TLRPC$StickerSet tLRPC$StickerSet;
            TLObject tLObject = this.parentObject;
            if (((tLObject instanceof TLRPC$Photo) || (tLObject instanceof TLRPC$Document)) && ((arrayList = this.inputStickerSets) == null || arrayList.isEmpty())) {
                this.data = new ArrayList[2];
                putStickerSet(0, null);
                putStickerSet(1, null);
                TLRPC$TL_messages_getAttachedStickers tLRPC$TL_messages_getAttachedStickers = new TLRPC$TL_messages_getAttachedStickers();
                TLObject tLObject2 = this.parentObject;
                if (tLObject2 instanceof TLRPC$Photo) {
                    TLRPC$Photo tLRPC$Photo = (TLRPC$Photo) tLObject2;
                    TLRPC$TL_inputStickeredMediaPhoto tLRPC$TL_inputStickeredMediaPhoto = new TLRPC$TL_inputStickeredMediaPhoto();
                    TLRPC$TL_inputPhoto tLRPC$TL_inputPhoto = new TLRPC$TL_inputPhoto();
                    tLRPC$TL_inputStickeredMediaPhoto.f1677id = tLRPC$TL_inputPhoto;
                    tLRPC$TL_inputPhoto.f1624id = tLRPC$Photo.f1632id;
                    tLRPC$TL_inputPhoto.access_hash = tLRPC$Photo.access_hash;
                    byte[] bArr = tLRPC$Photo.file_reference;
                    tLRPC$TL_inputPhoto.file_reference = bArr;
                    if (bArr == null) {
                        tLRPC$TL_inputPhoto.file_reference = new byte[0];
                    }
                    tLRPC$TL_messages_getAttachedStickers.media = tLRPC$TL_inputStickeredMediaPhoto;
                } else if (tLObject2 instanceof TLRPC$Document) {
                    TLRPC$Document tLRPC$Document = (TLRPC$Document) tLObject2;
                    TLRPC$TL_inputStickeredMediaDocument tLRPC$TL_inputStickeredMediaDocument = new TLRPC$TL_inputStickeredMediaDocument();
                    TLRPC$TL_inputDocument tLRPC$TL_inputDocument = new TLRPC$TL_inputDocument();
                    tLRPC$TL_inputStickeredMediaDocument.f1676id = tLRPC$TL_inputDocument;
                    tLRPC$TL_inputDocument.f1618id = tLRPC$Document.f1610id;
                    tLRPC$TL_inputDocument.access_hash = tLRPC$Document.access_hash;
                    byte[] bArr2 = tLRPC$Document.file_reference;
                    tLRPC$TL_inputDocument.file_reference = bArr2;
                    if (bArr2 == null) {
                        tLRPC$TL_inputDocument.file_reference = new byte[0];
                    }
                    tLRPC$TL_messages_getAttachedStickers.media = tLRPC$TL_inputStickeredMediaDocument;
                }
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getAttachedStickers, new RequestDelegate() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPacksLoader$$ExternalSyntheticLambda4
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject3, TLRPC$TL_error tLRPC$TL_error) {
                        EmojiPacksAlert.EmojiPacksLoader.this.lambda$init$1(tLObject3, tLRPC$TL_error);
                    }
                });
                return;
            }
            this.stickerSets = new ArrayList<>(this.inputStickerSets.size());
            this.data = new ArrayList[this.inputStickerSets.size()];
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.groupStickersDidLoad);
            final boolean[] zArr = new boolean[1];
            for (int i = 0; i < this.data.length; i++) {
                TLRPC$TL_messages_stickerSet stickerSet = MediaDataController.getInstance(this.currentAccount).getStickerSet(this.inputStickerSets.get(i), null, false, new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPacksLoader$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        EmojiPacksAlert.EmojiPacksLoader.this.lambda$init$3(zArr, (TLRPC$TL_messages_stickerSet) obj);
                    }
                });
                if (this.data.length == 1 && stickerSet != null && (tLRPC$StickerSet = stickerSet.set) != null && !tLRPC$StickerSet.emojis) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPacksLoader$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            EmojiPacksAlert.EmojiPacksLoader.this.lambda$init$4();
                        }
                    });
                    new StickersAlert(EmojiPacksAlert.this.getContext(), EmojiPacksAlert.this.fragment, this.inputStickerSets.get(i), null, EmojiPacksAlert.this.fragment instanceof ChatActivity ? ((ChatActivity) EmojiPacksAlert.this.fragment).getChatActivityEnterView() : null, ((BottomSheet) EmojiPacksAlert.this).resourcesProvider).show();
                    return;
                }
                this.stickerSets.add(stickerSet);
                putStickerSet(i, stickerSet);
            }
            onUpdate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$1(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPacksLoader$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiPacksAlert.EmojiPacksLoader.this.lambda$init$0(tLRPC$TL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$0(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
            TLRPC$StickerSet tLRPC$StickerSet;
            if (tLRPC$TL_error != null || !(tLObject instanceof TLRPC$Vector)) {
                EmojiPacksAlert.this.dismiss();
                if (EmojiPacksAlert.this.fragment == null || EmojiPacksAlert.this.fragment.getParentActivity() == null) {
                    return;
                }
                BulletinFactory.m65of(EmojiPacksAlert.this.fragment).createErrorBulletin(LocaleController.getString("UnknownError", C3632R.string.UnknownError)).show();
                return;
            }
            TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
            if (this.inputStickerSets == null) {
                this.inputStickerSets = new ArrayList<>();
            }
            for (int i = 0; i < tLRPC$Vector.objects.size(); i++) {
                Object obj = tLRPC$Vector.objects.get(i);
                if ((obj instanceof TLRPC$StickerSetCovered) && (tLRPC$StickerSet = ((TLRPC$StickerSetCovered) obj).set) != null) {
                    this.inputStickerSets.add(MediaDataController.getInputStickerSet(tLRPC$StickerSet));
                }
            }
            this.parentObject = null;
            init();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$3(boolean[] zArr, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
            if (tLRPC$TL_messages_stickerSet != null || zArr[0]) {
                return;
            }
            zArr[0] = true;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiPacksAlert$EmojiPacksLoader$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiPacksAlert.EmojiPacksLoader.this.lambda$init$2();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$2() {
            EmojiPacksAlert.this.dismiss();
            if (EmojiPacksAlert.this.fragment == null || EmojiPacksAlert.this.fragment.getParentActivity() == null) {
                return;
            }
            BulletinFactory.m65of(EmojiPacksAlert.this.fragment).createErrorBulletin(LocaleController.getString("AddEmojiNotFound", C3632R.string.AddEmojiNotFound)).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$4() {
            EmojiPacksAlert.this.dismiss();
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            TLRPC$StickerSet tLRPC$StickerSet;
            if (i == NotificationCenter.groupStickersDidLoad) {
                for (int i3 = 0; i3 < this.stickerSets.size(); i3++) {
                    if (this.stickerSets.get(i3) == null) {
                        TLRPC$TL_messages_stickerSet stickerSet = MediaDataController.getInstance(this.currentAccount).getStickerSet(this.inputStickerSets.get(i3), true);
                        if (this.stickerSets.size() == 1 && stickerSet != null && (tLRPC$StickerSet = stickerSet.set) != null && !tLRPC$StickerSet.emojis) {
                            EmojiPacksAlert.this.dismiss();
                            new StickersAlert(EmojiPacksAlert.this.getContext(), EmojiPacksAlert.this.fragment, this.inputStickerSets.get(i3), null, EmojiPacksAlert.this.fragment instanceof ChatActivity ? ((ChatActivity) EmojiPacksAlert.this.fragment).getChatActivityEnterView() : null, ((BottomSheet) EmojiPacksAlert.this).resourcesProvider).show();
                            return;
                        }
                        this.stickerSets.set(i3, stickerSet);
                        if (stickerSet != null) {
                            putStickerSet(i3, stickerSet);
                        }
                    }
                }
                onUpdate();
            }
        }

        private void putStickerSet(int i, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
            if (i >= 0) {
                ArrayList<EmojiView.CustomEmoji>[] arrayListArr = this.data;
                if (i >= arrayListArr.length) {
                    return;
                }
                int i2 = 0;
                if (tLRPC$TL_messages_stickerSet == null || tLRPC$TL_messages_stickerSet.documents == null) {
                    arrayListArr[i] = new ArrayList<>(12);
                    while (i2 < 12) {
                        this.data[i].add(null);
                        i2++;
                    }
                    return;
                }
                arrayListArr[i] = new ArrayList<>();
                while (i2 < tLRPC$TL_messages_stickerSet.documents.size()) {
                    TLRPC$Document tLRPC$Document = tLRPC$TL_messages_stickerSet.documents.get(i2);
                    if (tLRPC$Document == null) {
                        this.data[i].add(null);
                    } else {
                        EmojiView.CustomEmoji customEmoji = new EmojiView.CustomEmoji();
                        findEmoticon(tLRPC$TL_messages_stickerSet, tLRPC$Document.f1610id);
                        customEmoji.stickerSet = tLRPC$TL_messages_stickerSet;
                        customEmoji.documentId = tLRPC$Document.f1610id;
                        this.data[i].add(customEmoji);
                        if (EmojiPacksAlert.this.limitCount) {
                            TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set;
                            if (this.data[i].size() >= ((tLRPC$StickerSet == null || tLRPC$StickerSet.emojis) ? 16 : 10)) {
                                return;
                            }
                        } else {
                            continue;
                        }
                    }
                    i2++;
                }
            }
        }

        public void recycle() {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.groupStickersDidLoad);
        }

        public int getItemsCount() {
            int min;
            int i = 0;
            if (this.data == null) {
                return 0;
            }
            int i2 = 0;
            while (true) {
                ArrayList<EmojiView.CustomEmoji>[] arrayListArr = this.data;
                if (i >= arrayListArr.length) {
                    return i2;
                }
                if (arrayListArr[i] != null) {
                    if (arrayListArr.length != 1) {
                        min = Math.min(EmojiPacksAlert.this.gridLayoutManager.getSpanCount() * 2, this.data[i].size());
                    } else {
                        min = arrayListArr[i].size();
                    }
                    i2 = i2 + min + 1;
                }
                i++;
            }
        }

        public String findEmoticon(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, long j) {
            if (tLRPC$TL_messages_stickerSet == null) {
                return null;
            }
            for (int i = 0; i < tLRPC$TL_messages_stickerSet.packs.size(); i++) {
                TLRPC$TL_stickerPack tLRPC$TL_stickerPack = tLRPC$TL_messages_stickerSet.packs.get(i);
                ArrayList<Long> arrayList = tLRPC$TL_stickerPack.documents;
                if (arrayList != null && arrayList.contains(Long.valueOf(j))) {
                    return tLRPC$TL_stickerPack.emoticon;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ColorFilter getAdaptiveEmojiColorFilter(int i) {
        if (i != this.adaptiveEmojiColor || this.adaptiveEmojiColorFilter == null) {
            this.adaptiveEmojiColor = i;
            this.adaptiveEmojiColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
        return this.adaptiveEmojiColorFilter;
    }
}
