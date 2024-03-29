package org.telegram.p043ui.Delegates;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.AvatarsImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.MemberRequestsBottomSheet;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate */
/* loaded from: classes6.dex */
public class ChatActivityMemberRequestsDelegate {
    private AvatarsImageView avatarsView;
    private MemberRequestsBottomSheet bottomSheet;
    private final Callback callback;
    private TLRPC$ChatFull chatInfo;
    private int closePendingRequestsCount = -1;
    private ImageView closeView;
    private final int currentAccount;
    private final TLRPC$Chat currentChat;
    private final BaseFragment fragment;
    private ValueAnimator pendingRequestsAnimator;
    private int pendingRequestsCount;
    private float pendingRequestsEnterOffset;
    private TextView requestsCountTextView;
    private FrameLayout root;

    /* renamed from: org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate$Callback */
    /* loaded from: classes6.dex */
    public interface Callback {
        void onEnterOffsetChanged();
    }

    public ChatActivityMemberRequestsDelegate(BaseFragment baseFragment, TLRPC$Chat tLRPC$Chat, Callback callback) {
        this.fragment = baseFragment;
        this.currentChat = tLRPC$Chat;
        this.currentAccount = baseFragment.getCurrentAccount();
        this.callback = callback;
    }

    public View getView() {
        if (this.root == null) {
            FrameLayout frameLayout = new FrameLayout(this.fragment.getParentActivity());
            this.root = frameLayout;
            frameLayout.setBackgroundResource(C3632R.C3634drawable.blockpanel);
            this.root.getBackground().mutate().setColorFilter(new PorterDuffColorFilter(this.fragment.getThemedColor(Theme.key_chat_topPanelBackground), PorterDuff.Mode.MULTIPLY));
            this.root.setVisibility(8);
            this.pendingRequestsEnterOffset = -getViewHeight();
            View view = new View(this.fragment.getParentActivity());
            view.setBackground(Theme.getSelectorDrawable(false));
            view.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatActivityMemberRequestsDelegate.this.lambda$getView$0(view2);
                }
            });
            this.root.addView(view, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 0, 2));
            LinearLayout linearLayout = new LinearLayout(this.fragment.getParentActivity());
            linearLayout.setOrientation(0);
            this.root.addView(linearLayout, LayoutHelper.createFrame(-1, -1, 48, 0, 0, 36, 0));
            AvatarsImageView avatarsImageView = new AvatarsImageView(this, this.fragment.getParentActivity(), false) { // from class: org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.AvatarsImageView, android.view.View
                public void onMeasure(int i, int i2) {
                    int i3 = this.avatarsDrawable.count;
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(i3 == 0 ? 0 : ((i3 - 1) * 20) + 24), 1073741824), i2);
                }
            };
            this.avatarsView = avatarsImageView;
            avatarsImageView.setAvatarsTextSize(AndroidUtilities.m107dp(18));
            this.avatarsView.reset();
            linearLayout.addView(this.avatarsView, LayoutHelper.createFrame(-2, -1, 48, 8, 0, 10, 0));
            TextView textView = new TextView(this.fragment.getParentActivity());
            this.requestsCountTextView = textView;
            textView.setEllipsize(TextUtils.TruncateAt.END);
            this.requestsCountTextView.setGravity(16);
            this.requestsCountTextView.setSingleLine();
            this.requestsCountTextView.setText((CharSequence) null);
            this.requestsCountTextView.setTextColor(this.fragment.getThemedColor(Theme.key_chat_topPanelTitle));
            this.requestsCountTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            linearLayout.addView(this.requestsCountTextView, LayoutHelper.createFrame(-1, -1, 48, 0, 0, 0, 0));
            ImageView imageView = new ImageView(this.fragment.getParentActivity());
            this.closeView = imageView;
            if (Build.VERSION.SDK_INT >= 21) {
                imageView.setBackground(Theme.createSelectorDrawable(this.fragment.getThemedColor(Theme.key_inappPlayerClose) & 436207615, 1, AndroidUtilities.m107dp(14)));
            }
            this.closeView.setColorFilter(new PorterDuffColorFilter(this.fragment.getThemedColor(Theme.key_chat_topPanelClose), PorterDuff.Mode.MULTIPLY));
            this.closeView.setContentDescription(LocaleController.getString("Close", C3632R.string.Close));
            this.closeView.setImageResource(C3632R.C3634drawable.miniplayer_close);
            this.closeView.setScaleType(ImageView.ScaleType.CENTER);
            this.closeView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatActivityMemberRequestsDelegate.this.lambda$getView$1(view2);
                }
            });
            this.root.addView(this.closeView, LayoutHelper.createFrame(36, -1, 53, 0, 0, 2, 0));
            TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
            if (tLRPC$ChatFull != null) {
                setPendingRequests(tLRPC$ChatFull.requests_pending, tLRPC$ChatFull.recent_requesters, false);
            }
        }
        return this.root;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getView$0(View view) {
        showBottomSheet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getView$1(View view) {
        this.fragment.getMessagesController().setChatPendingRequestsOnClose(this.currentChat.f1602id, this.pendingRequestsCount);
        this.closePendingRequestsCount = this.pendingRequestsCount;
        animatePendingRequests(false, true);
    }

    public void setChatInfo(TLRPC$ChatFull tLRPC$ChatFull, boolean z) {
        this.chatInfo = tLRPC$ChatFull;
        if (tLRPC$ChatFull != null) {
            setPendingRequests(tLRPC$ChatFull.requests_pending, tLRPC$ChatFull.recent_requesters, z);
        }
    }

    public int getViewHeight() {
        return AndroidUtilities.m107dp(40);
    }

    public float getViewEnterOffset() {
        return this.pendingRequestsEnterOffset;
    }

    public void onBackToScreen() {
        MemberRequestsBottomSheet memberRequestsBottomSheet = this.bottomSheet;
        if (memberRequestsBottomSheet == null || !memberRequestsBottomSheet.isNeedRestoreDialog()) {
            return;
        }
        showBottomSheet();
    }

    private void showBottomSheet() {
        if (this.bottomSheet == null) {
            this.bottomSheet = new MemberRequestsBottomSheet(this.fragment, this.currentChat.f1602id) { // from class: org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate.2
                @Override // org.telegram.p043ui.Components.UsersAlertBase, org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
                public void dismiss() {
                    if (ChatActivityMemberRequestsDelegate.this.bottomSheet != null && !ChatActivityMemberRequestsDelegate.this.bottomSheet.isNeedRestoreDialog()) {
                        ChatActivityMemberRequestsDelegate.this.bottomSheet = null;
                    }
                    super.dismiss();
                }
            };
        }
        this.fragment.showDialog(this.bottomSheet);
    }

    private void setPendingRequests(int i, List<Long> list, boolean z) {
        if (this.root == null) {
            return;
        }
        if (i <= 0) {
            if (this.currentChat != null) {
                this.fragment.getMessagesController().setChatPendingRequestsOnClose(this.currentChat.f1602id, 0);
                this.closePendingRequestsCount = 0;
            }
            animatePendingRequests(false, z);
            this.pendingRequestsCount = 0;
        } else if (this.pendingRequestsCount != i) {
            this.pendingRequestsCount = i;
            this.requestsCountTextView.setText(LocaleController.formatPluralString("JoinUsersRequests", i, new Object[0]));
            animatePendingRequests(true, z);
            if (list == null || list.isEmpty()) {
                return;
            }
            int min = Math.min(3, list.size());
            for (int i2 = 0; i2 < min; i2++) {
                TLRPC$User user = this.fragment.getMessagesController().getUser(list.get(i2));
                if (user != null) {
                    this.avatarsView.setObject(i2, this.currentAccount, user);
                }
            }
            this.avatarsView.setCount(min);
            this.avatarsView.commitTransition(true);
        }
    }

    private void animatePendingRequests(final boolean z, boolean z2) {
        if (z == (this.root.getVisibility() == 0)) {
            return;
        }
        if (z) {
            if (this.closePendingRequestsCount == -1 && this.currentChat != null) {
                this.closePendingRequestsCount = this.fragment.getMessagesController().getChatPendingRequestsOnClosed(this.currentChat.f1602id);
            }
            int i = this.pendingRequestsCount;
            int i2 = this.closePendingRequestsCount;
            if (i == i2) {
                return;
            }
            if (i2 != 0 && this.currentChat != null) {
                this.fragment.getMessagesController().setChatPendingRequestsOnClose(this.currentChat.f1602id, 0);
            }
        }
        ValueAnimator valueAnimator = this.pendingRequestsAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            float[] fArr = new float[2];
            fArr[0] = z ? 0.0f : 1.0f;
            if (z) {
                f = 1.0f;
            }
            fArr[1] = f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.pendingRequestsAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ChatActivityMemberRequestsDelegate.this.lambda$animatePendingRequests$2(valueAnimator2);
                }
            });
            this.pendingRequestsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (z) {
                        ChatActivityMemberRequestsDelegate.this.root.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (!z) {
                        ChatActivityMemberRequestsDelegate.this.root.setVisibility(8);
                    }
                    if (ChatActivityMemberRequestsDelegate.this.callback != null) {
                        ChatActivityMemberRequestsDelegate.this.callback.onEnterOffsetChanged();
                    }
                }
            });
            this.pendingRequestsAnimator.setDuration(200L);
            this.pendingRequestsAnimator.start();
            return;
        }
        this.root.setVisibility(z ? 0 : 8);
        if (!z) {
            f = -getViewHeight();
        }
        this.pendingRequestsEnterOffset = f;
        Callback callback = this.callback;
        if (callback != null) {
            callback.onEnterOffsetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animatePendingRequests$2(ValueAnimator valueAnimator) {
        this.pendingRequestsEnterOffset = (-getViewHeight()) * (1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue());
        Callback callback = this.callback;
        if (callback != null) {
            callback.onEnterOffsetChanged();
        }
    }

    public void fillThemeDescriptions(List<ThemeDescription> list) {
        list.add(new ThemeDescription(this.root, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_chat_topPanelBackground));
        list.add(new ThemeDescription(this.requestsCountTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_chat_topPanelTitle));
        list.add(new ThemeDescription(this.closeView, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_chat_topPanelClose));
    }
}
