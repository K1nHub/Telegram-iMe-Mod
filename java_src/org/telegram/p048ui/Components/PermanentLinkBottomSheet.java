package org.telegram.p048ui.Components;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.widget.NestedScrollView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Components.LinkActionView;
import org.telegram.p048ui.ManageLinksActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$TL_chatInviteExported;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_exportChatInvite;
/* renamed from: org.telegram.ui.Components.PermanentLinkBottomSheet */
/* loaded from: classes6.dex */
public class PermanentLinkBottomSheet extends BottomSheet {
    private long chatId;
    private BaseFragment fragment;
    private final RLottieImageView imageView;
    TLRPC$TL_chatInviteExported invite;
    private final LinkActionView linkActionView;
    boolean linkGenerating;
    RLottieDrawable linkIcon;
    private final TextView manage;
    private final TextView subtitle;
    private final TextView titleView;

    public PermanentLinkBottomSheet(Context context, boolean z, final BaseFragment baseFragment, final TLRPC$ChatFull tLRPC$ChatFull, long j, boolean z2) {
        super(context, z);
        int i;
        String str;
        TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported;
        this.chatId = j;
        setAllowNestedScroll(true);
        setApplyBottomPadding(false);
        LinkActionView linkActionView = new LinkActionView(context, baseFragment, this, j, true, z2);
        this.linkActionView = linkActionView;
        linkActionView.setPermanent(true);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        int i2 = C3286R.C3291raw.shared_link_enter;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i2, "" + i2, AndroidUtilities.m50dp(90), AndroidUtilities.m50dp(90), false, null);
        this.linkIcon = rLottieDrawable;
        rLottieDrawable.setCustomEndFrame(42);
        rLottieImageView.setAnimation(this.linkIcon);
        linkActionView.setUsers(0, null);
        linkActionView.hideRevokeOption(true);
        linkActionView.setDelegate(new LinkActionView.Delegate() { // from class: org.telegram.ui.Components.PermanentLinkBottomSheet$$ExternalSyntheticLambda5
            @Override // org.telegram.p048ui.Components.LinkActionView.Delegate
            public /* synthetic */ void editLink() {
                LinkActionView.Delegate.CC.$default$editLink(this);
            }

            @Override // org.telegram.p048ui.Components.LinkActionView.Delegate
            public /* synthetic */ void removeLink() {
                LinkActionView.Delegate.CC.$default$removeLink(this);
            }

            @Override // org.telegram.p048ui.Components.LinkActionView.Delegate
            public final void revokeLink() {
                PermanentLinkBottomSheet.this.lambda$new$0();
            }

            @Override // org.telegram.p048ui.Components.LinkActionView.Delegate
            public /* synthetic */ void showUsersForPermanentLink() {
                LinkActionView.Delegate.CC.$default$showUsersForPermanentLink(this);
            }
        });
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setText(LocaleController.getString("InviteLink", C3286R.string.InviteLink));
        textView.setTextSize(24.0f);
        textView.setGravity(1);
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        TextView textView2 = new TextView(context);
        this.subtitle = textView2;
        if (z2) {
            i = C3286R.string.LinkInfoChannel;
            str = "LinkInfoChannel";
        } else {
            i = C3286R.string.LinkInfo;
            str = "LinkInfo";
        }
        textView2.setText(LocaleController.getString(str, i));
        textView2.setTextSize(14.0f);
        textView2.setGravity(1);
        textView2.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        TextView textView3 = new TextView(context);
        this.manage = textView3;
        textView3.setText(LocaleController.getString("ManageInviteLinks", C3286R.string.ManageInviteLinks));
        textView3.setTextSize(14.0f);
        textView3.setTextColor(Theme.getColor("windowBackgroundWhiteBlueText"));
        textView3.setBackground(Theme.createRadSelectorDrawable(ColorUtils.setAlphaComponent(Theme.getColor("windowBackgroundWhiteBlueText"), 76), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4)));
        textView3.setPadding(AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(4));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PermanentLinkBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermanentLinkBottomSheet.this.lambda$new$1(tLRPC$ChatFull, baseFragment, view);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(rLottieImageView, LayoutHelper.createLinear(90, 90, 1, 0, 24, 0, 0));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 60, 16, 60, 0));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 60, 16, 60, 0));
        linearLayout.addView(linkActionView, LayoutHelper.createLinear(-1, -2));
        linearLayout.addView(textView3, LayoutHelper.createLinear(-2, -2, 1, 60, 26, 60, 26));
        NestedScrollView nestedScrollView = new NestedScrollView(context);
        nestedScrollView.setVerticalScrollBarEnabled(false);
        nestedScrollView.addView(linearLayout);
        setCustomView(nestedScrollView);
        TLRPC$Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(j));
        if (chat != null && ChatObject.isPublic(chat)) {
            linkActionView.setLink("https://t.me/" + ChatObject.getPublicUsername(chat));
            textView3.setVisibility(8);
        } else if (tLRPC$ChatFull != null && (tLRPC$TL_chatInviteExported = tLRPC$ChatFull.exported_invite) != null) {
            linkActionView.setLink(tLRPC$TL_chatInviteExported.link);
        } else {
            generateLink(false);
        }
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        generateLink(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(TLRPC$ChatFull tLRPC$ChatFull, BaseFragment baseFragment, View view) {
        ManageLinksActivity manageLinksActivity = new ManageLinksActivity(tLRPC$ChatFull.f1500id, 0L, 0);
        manageLinksActivity.setInfo(tLRPC$ChatFull, tLRPC$ChatFull.exported_invite);
        baseFragment.presentFragment(manageLinksActivity);
        dismiss();
    }

    private void generateLink(final boolean z) {
        if (this.linkGenerating) {
            return;
        }
        this.linkGenerating = true;
        TLRPC$TL_messages_exportChatInvite tLRPC$TL_messages_exportChatInvite = new TLRPC$TL_messages_exportChatInvite();
        tLRPC$TL_messages_exportChatInvite.legacy_revoke_permanent = true;
        tLRPC$TL_messages_exportChatInvite.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(-this.chatId);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_exportChatInvite, new RequestDelegate() { // from class: org.telegram.ui.Components.PermanentLinkBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PermanentLinkBottomSheet.this.lambda$generateLink$3(z, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$3(final boolean z, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PermanentLinkBottomSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PermanentLinkBottomSheet.this.lambda$generateLink$2(tLRPC$TL_error, tLObject, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$2(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, boolean z) {
        if (tLRPC$TL_error == null) {
            this.invite = (TLRPC$TL_chatInviteExported) tLObject;
            TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.chatId);
            if (chatFull != null) {
                chatFull.exported_invite = this.invite;
            }
            this.linkActionView.setLink(this.invite.link);
            if (z && this.fragment != null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setMessage(LocaleController.getString("RevokeAlertNewLink", C3286R.string.RevokeAlertNewLink));
                builder.setTitle(LocaleController.getString("RevokeLink", C3286R.string.RevokeLink));
                builder.setNegativeButton(LocaleController.getString("OK", C3286R.string.OK), null);
                this.fragment.showDialog(builder.create());
            }
        }
        this.linkGenerating = false;
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PermanentLinkBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PermanentLinkBottomSheet.this.lambda$show$4();
            }
        }, 50L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$4() {
        this.linkIcon.start();
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.PermanentLinkBottomSheet$$ExternalSyntheticLambda4
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                PermanentLinkBottomSheet.this.updateColors();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.titleView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.subtitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.manage, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlueText"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "featuredStickers_addButton"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "featuredStickers_buttonText"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "windowBackgroundWhiteBlueText"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        this.imageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m50dp(90), Theme.getColor("featuredStickers_addButton")));
        this.manage.setBackground(Theme.createRadSelectorDrawable(ColorUtils.setAlphaComponent(Theme.getColor("windowBackgroundWhiteBlueText"), 76), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4)));
        int color = Theme.getColor("featuredStickers_buttonText");
        this.linkIcon.setLayerColor("Top.**", color);
        this.linkIcon.setLayerColor("Bottom.**", color);
        this.linkIcon.setLayerColor("Center.**", color);
        this.linkActionView.updateColors();
        setBackgroundColor(Theme.getColor("dialogBackground"));
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }
}
