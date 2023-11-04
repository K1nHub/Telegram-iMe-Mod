package org.telegram.p043ui.Components;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$ChatInvite;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_importChatInvite;
import org.telegram.tgnet.TLRPC$Updates;
/* renamed from: org.telegram.ui.Components.JoinGroupAlert */
/* loaded from: classes6.dex */
public class JoinGroupAlert extends BottomSheet {
    private TLRPC$ChatInvite chatInvite;
    private TLRPC$Chat currentChat;
    private final BaseFragment fragment;
    private final String hash;
    private RadialProgressView requestProgressView;
    private TextView requestTextView;

    public JoinGroupAlert(Context context, TLObject tLObject, String str, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        super(context, false, resourcesProvider);
        int i;
        boolean z;
        boolean z2;
        int i2;
        String str2;
        String lowerCase;
        int i3;
        String str3;
        int i4;
        String str4;
        boolean z3;
        int i5;
        String str5;
        boolean z4;
        CharSequence format;
        setApplyBottomPadding(false);
        setApplyTopPadding(false);
        fixNavigationBar(getThemedColor(Theme.key_windowBackgroundWhite));
        this.fragment = baseFragment;
        if (tLObject instanceof TLRPC$ChatInvite) {
            this.chatInvite = (TLRPC$ChatInvite) tLObject;
        } else if (tLObject instanceof TLRPC$Chat) {
            this.currentChat = (TLRPC$Chat) tLObject;
        }
        this.hash = str;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setClickable(true);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(linearLayout);
        NestedScrollView nestedScrollView = new NestedScrollView(context);
        nestedScrollView.addView(frameLayout);
        setCustomView(nestedScrollView);
        ImageView imageView = new ImageView(context);
        imageView.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        imageView.setColorFilter(getThemedColor(Theme.key_sheet_other));
        imageView.setImageResource(C3634R.C3636drawable.ic_layer_close);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                JoinGroupAlert.this.lambda$new$0(view);
            }
        });
        int m104dp = AndroidUtilities.m104dp(8);
        imageView.setPadding(m104dp, m104dp, m104dp, m104dp);
        frameLayout.addView(imageView, LayoutHelper.createFrame(36, 36, 8388661, 6, 8, 8, 0));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.m104dp(45));
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(90, 90, 49, 0, 27, 0, 0));
        TLRPC$ChatInvite tLRPC$ChatInvite = this.chatInvite;
        if (tLRPC$ChatInvite != null) {
            if (tLRPC$ChatInvite.chat != null) {
                AvatarDrawable avatarDrawable = new AvatarDrawable(this.chatInvite.chat);
                TLRPC$ChatInvite tLRPC$ChatInvite2 = this.chatInvite;
                TLRPC$Chat tLRPC$Chat = tLRPC$ChatInvite2.chat;
                String str6 = tLRPC$Chat.title;
                i2 = tLRPC$Chat.participants_count;
                backupImageView.setForUserOrChat(tLRPC$Chat, avatarDrawable, tLRPC$ChatInvite2);
                r9 = str6;
            } else {
                AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                avatarDrawable2.setInfo(0L, this.chatInvite.title, null);
                TLRPC$ChatInvite tLRPC$ChatInvite3 = this.chatInvite;
                String str7 = tLRPC$ChatInvite3.title;
                i2 = tLRPC$ChatInvite3.participants_count;
                backupImageView.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$ChatInvite3.photo.sizes, 50), this.chatInvite.photo), "50_50", avatarDrawable2, this.chatInvite);
                r9 = str7;
            }
            TLRPC$ChatInvite tLRPC$ChatInvite4 = this.chatInvite;
            str2 = tLRPC$ChatInvite4.about;
            z = tLRPC$ChatInvite4.verified;
            z2 = tLRPC$ChatInvite4.fake;
            i = tLRPC$ChatInvite4.scam;
        } else if (this.currentChat != null) {
            AvatarDrawable avatarDrawable3 = new AvatarDrawable(this.currentChat);
            String str8 = this.currentChat.title;
            TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.currentChat.f1602id);
            r9 = chatFull != null ? chatFull.about : null;
            i2 = Math.max(this.currentChat.participants_count, chatFull != null ? chatFull.participants_count : 0);
            TLRPC$Chat tLRPC$Chat2 = this.currentChat;
            backupImageView.setForUserOrChat(tLRPC$Chat2, avatarDrawable3, tLRPC$Chat2);
            TLRPC$Chat tLRPC$Chat3 = this.currentChat;
            boolean z5 = tLRPC$Chat3.verified;
            z2 = tLRPC$Chat3.fake;
            z = z5;
            str2 = r9;
            r9 = str8;
            i = tLRPC$Chat3.scam;
        } else {
            i = 0;
            z = false;
            z2 = false;
            i2 = 0;
            str2 = null;
        }
        SimpleTextView simpleTextView = new SimpleTextView(context);
        simpleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        simpleTextView.setTextSize(20);
        int i6 = Theme.key_dialogTextBlack;
        simpleTextView.setTextColor(getThemedColor(i6));
        simpleTextView.setText(r9);
        simpleTextView.setGravity(17);
        linearLayout.addView(simpleTextView, LayoutHelper.createLinear(-2, -2, 49, 10, 10, 10, i2 > 0 ? 0 : 20));
        if (i != 0 || z2) {
            simpleTextView.setRightDrawable(getScamDrawable(i ^ 1));
        } else if (z) {
            simpleTextView.setRightDrawable(getVerifiedCrossfadeDrawable());
        }
        TLRPC$ChatInvite tLRPC$ChatInvite5 = this.chatInvite;
        final boolean z6 = (tLRPC$ChatInvite5 != null && ((tLRPC$ChatInvite5.channel && !tLRPC$ChatInvite5.megagroup) || ChatObject.isChannelAndNotMegaGroup(tLRPC$ChatInvite5.chat))) || (ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup);
        boolean z7 = !TextUtils.isEmpty(str2);
        TextView textView = new TextView(context);
        textView.setTextSize(1, 13.0f);
        int i7 = Theme.key_dialogTextGray3;
        textView.setTextColor(getThemedColor(i7));
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        if (z6) {
            lowerCase = LocaleController.getString("ChannelPrivate", C3634R.string.ChannelPrivate).toLowerCase();
        } else {
            lowerCase = LocaleController.getString("MegaPrivate", C3634R.string.MegaPrivate).toLowerCase();
        }
        textView.setText(lowerCase);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 49, 10, 0, 10, z7 ? 0 : 20));
        if (z7) {
            TextView textView2 = new TextView(context);
            textView2.setGravity(17);
            textView2.setText(str2);
            textView2.setTextColor(getThemedColor(i6));
            textView2.setTextSize(1, 15.0f);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 48, 24, 10, 24, 20));
        }
        TLRPC$ChatInvite tLRPC$ChatInvite6 = this.chatInvite;
        if (tLRPC$ChatInvite6 == null || tLRPC$ChatInvite6.request_needed) {
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, -2));
            RadialProgressView radialProgressView = new RadialProgressView(getContext(), resourcesProvider);
            this.requestProgressView = radialProgressView;
            int i8 = Theme.key_featuredStickers_addButton;
            radialProgressView.setProgressColor(getThemedColor(i8));
            this.requestProgressView.setSize(AndroidUtilities.m104dp(32));
            this.requestProgressView.setVisibility(4);
            frameLayout2.addView(this.requestProgressView, LayoutHelper.createFrame(48, 48, 17));
            TextView textView3 = new TextView(getContext());
            this.requestTextView = textView3;
            textView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m104dp(8), getThemedColor(i8), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
            this.requestTextView.setEllipsize(TextUtils.TruncateAt.END);
            this.requestTextView.setGravity(17);
            this.requestTextView.setSingleLine(true);
            TextView textView4 = this.requestTextView;
            if (z6) {
                i3 = C3634R.string.RequestToJoinChannel;
                str3 = "RequestToJoinChannel";
            } else {
                i3 = C3634R.string.RequestToJoinGroup;
                str3 = "RequestToJoinGroup";
            }
            textView4.setText(LocaleController.getString(str3, i3));
            this.requestTextView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
            this.requestTextView.setTextSize(1, 14.0f);
            this.requestTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.requestTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    JoinGroupAlert.this.lambda$new$7(z6, view);
                }
            });
            frameLayout2.addView(this.requestTextView, LayoutHelper.createLinear(-1, 48, 8388611, 14, 0, 14, 0));
            TextView textView5 = new TextView(getContext());
            textView5.setGravity(17);
            textView5.setTextSize(1, 14.0f);
            if (z6) {
                i4 = C3634R.string.RequestToJoinChannelDescription;
                str4 = "RequestToJoinChannelDescription";
            } else {
                i4 = C3634R.string.RequestToJoinGroupDescription;
                str4 = "RequestToJoinGroupDescription";
            }
            textView5.setText(LocaleController.getString(str4, i4));
            textView5.setTextColor(getThemedColor(i7));
            linearLayout.addView(textView5, LayoutHelper.createLinear(-1, -2, 48, 24, 17, 24, 15));
        } else if (tLRPC$ChatInvite6 != null) {
            if (tLRPC$ChatInvite6.participants.isEmpty()) {
                z3 = false;
            } else {
                int min = Math.min(this.chatInvite.participants.size(), 3);
                AvatarsImageView avatarsImageView = new AvatarsImageView(context, false);
                avatarsImageView.setAvatarsTextSize(AndroidUtilities.m104dp(20));
                avatarsImageView.setSize(AndroidUtilities.m104dp(38));
                avatarsImageView.setCount(min);
                avatarsImageView.setStepFactor(0.65f);
                for (int i9 = 0; i9 < min; i9++) {
                    avatarsImageView.setObject(i9, UserConfig.selectedAccount, this.chatInvite.participants.get(i9));
                }
                avatarsImageView.commitTransition(false);
                float f = 38;
                linearLayout.addView(avatarsImageView, LayoutHelper.createLinear((int) (f + ((min - 1) * ((0.65f * f) + 1.0f))), 44, 17, 0, 2, 0, 4));
                TextView textView6 = new TextView(context);
                textView6.setTextSize(1, 13.0f);
                textView6.setTextColor(getThemedColor(Theme.key_dialogTextGray3));
                textView6.setGravity(17);
                if (min == 1) {
                    z4 = false;
                    format = ellipsize(textView6, this.chatInvite, 0).toString();
                } else {
                    z4 = false;
                    if (min == 2) {
                        format = LocaleController.formatString("RequestToJoinMembersTwo", C3634R.string.RequestToJoinMembersTwo, ellipsize(textView6, this.chatInvite, 0), ellipsize(textView6, this.chatInvite, 1));
                    } else {
                        if (i2 == 3) {
                            format = LocaleController.formatString("RequestToJoinMembersThree", C3634R.string.RequestToJoinMembersThree, ellipsize(textView6, this.chatInvite, 0), ellipsize(textView6, this.chatInvite, 1), ellipsize(textView6, this.chatInvite, 2));
                            z3 = false;
                        } else {
                            int max = Math.max(i2 - min, 2);
                            z3 = false;
                            format = String.format(LocaleController.getPluralString("RequestToJoinMembersAll", max), ellipsize(textView6, this.chatInvite, 0), ellipsize(textView6, this.chatInvite, 1), Integer.valueOf(max));
                        }
                        textView6.setText(format);
                        linearLayout.addView(textView6, LayoutHelper.createLinear(-2, -2, 49, 10, 0, 10, 24));
                    }
                }
                z3 = z4;
                textView6.setText(format);
                linearLayout.addView(textView6, LayoutHelper.createLinear(-2, -2, 49, 10, 0, 10, 24));
            }
            TLRPC$ChatInvite tLRPC$ChatInvite7 = this.chatInvite;
            boolean z8 = ((!tLRPC$ChatInvite7.channel || tLRPC$ChatInvite7.megagroup) && (!ChatObject.isChannel(tLRPC$ChatInvite7.chat) || this.chatInvite.chat.megagroup)) ? z3 : true;
            TextView textView7 = new TextView(getContext());
            textView7.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m104dp(8), getThemedColor(Theme.key_featuredStickers_addButton), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
            textView7.setEllipsize(TextUtils.TruncateAt.END);
            textView7.setGravity(17);
            textView7.setSingleLine(true);
            if (z8) {
                i5 = C3634R.string.ProfileJoinChannel;
                str5 = "ProfileJoinChannel";
            } else {
                i5 = C3634R.string.ProfileJoinGroup;
                str5 = "ProfileJoinGroup";
            }
            textView7.setText(LocaleController.getString(str5, i5));
            textView7.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
            textView7.setTextSize(1, 14.0f);
            textView7.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            linearLayout.addView(textView7, LayoutHelper.createLinear(-1, 48, 8388611, 14, 0, 14, 14));
            textView7.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    JoinGroupAlert.this.lambda$new$10(view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(final boolean z, View view) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                JoinGroupAlert.this.lambda$new$1();
            }
        }, 400L);
        if (this.chatInvite == null && this.currentChat != null) {
            MessagesController.getInstance(this.currentAccount).addUserToChat(this.currentChat.f1602id, UserConfig.getInstance(this.currentAccount).getCurrentUser(), 0, null, null, true, new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    JoinGroupAlert.this.dismiss();
                }
            }, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean lambda$new$3;
                    lambda$new$3 = JoinGroupAlert.this.lambda$new$3(z, tLRPC$TL_error);
                    return lambda$new$3;
                }
            });
            return;
        }
        final TLRPC$TL_messages_importChatInvite tLRPC$TL_messages_importChatInvite = new TLRPC$TL_messages_importChatInvite();
        tLRPC$TL_messages_importChatInvite.hash = this.hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_importChatInvite, new RequestDelegate() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda11
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                JoinGroupAlert.this.lambda$new$6(z, tLRPC$TL_messages_importChatInvite, tLObject, tLRPC$TL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        if (isDismissed()) {
            return;
        }
        this.requestTextView.setVisibility(4);
        this.requestProgressView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$3(final boolean z, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null && "INVITE_REQUEST_SENT".equals(tLRPC$TL_error.text)) {
            setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    JoinGroupAlert.this.lambda$new$2(z, dialogInterface);
                }
            });
        }
        dismiss();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(boolean z, DialogInterface dialogInterface) {
        showBulletin(getContext(), this.fragment, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(final boolean z, final TLRPC$TL_messages_importChatInvite tLRPC$TL_messages_importChatInvite, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                JoinGroupAlert.this.lambda$new$5(tLRPC$TL_error, z, tLRPC$TL_messages_importChatInvite);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(TLRPC$TL_error tLRPC$TL_error, final boolean z, TLRPC$TL_messages_importChatInvite tLRPC$TL_messages_importChatInvite) {
        BaseFragment baseFragment = this.fragment;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (tLRPC$TL_error != null) {
            if ("INVITE_REQUEST_SENT".equals(tLRPC$TL_error.text)) {
                setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        JoinGroupAlert.this.lambda$new$4(z, dialogInterface);
                    }
                });
            } else {
                AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, this.fragment, tLRPC$TL_messages_importChatInvite, new Object[0]);
            }
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(boolean z, DialogInterface dialogInterface) {
        showBulletin(getContext(), this.fragment, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(View view) {
        dismiss();
        final TLRPC$TL_messages_importChatInvite tLRPC$TL_messages_importChatInvite = new TLRPC$TL_messages_importChatInvite();
        tLRPC$TL_messages_importChatInvite.hash = this.hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_importChatInvite, new RequestDelegate() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                JoinGroupAlert.this.lambda$new$9(tLRPC$TL_messages_importChatInvite, tLObject, tLRPC$TL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(final TLRPC$TL_messages_importChatInvite tLRPC$TL_messages_importChatInvite, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC$Updates) tLObject, false);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinGroupAlert$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                JoinGroupAlert.this.lambda$new$8(tLRPC$TL_error, tLObject, tLRPC$TL_messages_importChatInvite);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TLRPC$TL_messages_importChatInvite tLRPC$TL_messages_importChatInvite) {
        BaseFragment baseFragment = this.fragment;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (tLRPC$TL_error == null) {
            TLRPC$Updates tLRPC$Updates = (TLRPC$Updates) tLObject;
            if (tLRPC$Updates.chats.isEmpty()) {
                return;
            }
            TLRPC$Chat tLRPC$Chat = tLRPC$Updates.chats.get(0);
            tLRPC$Chat.left = false;
            tLRPC$Chat.kicked = false;
            MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$Updates.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tLRPC$Updates.chats, false);
            Bundle bundle = new Bundle();
            bundle.putLong("chat_id", tLRPC$Chat.f1602id);
            if (MessagesController.getInstance(this.currentAccount).checkCanOpenChat(bundle, this.fragment)) {
                ChatActivity chatActivity = new ChatActivity(bundle);
                BaseFragment baseFragment2 = this.fragment;
                baseFragment2.presentFragment(chatActivity, baseFragment2 instanceof ChatActivity);
                return;
            }
            return;
        }
        AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, this.fragment, tLRPC$TL_messages_importChatInvite, new Object[0]);
    }

    private Drawable getVerifiedCrossfadeDrawable() {
        return new CombinedDrawable(Theme.dialogs_verifiedDrawable, Theme.dialogs_verifiedCheckDrawable);
    }

    public static void showBulletin(Context context, BaseFragment baseFragment, boolean z) {
        String string;
        if (context == null) {
            if (baseFragment != null) {
                baseFragment.getContext();
                return;
            }
            return;
        }
        Bulletin.TwoLineLottieLayout twoLineLottieLayout = new Bulletin.TwoLineLottieLayout(context, baseFragment.getResourceProvider());
        twoLineLottieLayout.imageView.setAnimation(C3634R.raw.timer_3, 28, 28);
        twoLineLottieLayout.titleTextView.setText(LocaleController.getString("RequestToJoinSent", C3634R.string.RequestToJoinSent));
        if (z) {
            string = LocaleController.getString("RequestToJoinChannelSentDescription", C3634R.string.RequestToJoinChannelSentDescription);
        } else {
            string = LocaleController.getString("RequestToJoinGroupSentDescription", C3634R.string.RequestToJoinGroupSentDescription);
        }
        twoLineLottieLayout.subtitleTextView.setText(string);
        Bulletin.make(baseFragment, twoLineLottieLayout, 2750).show();
    }

    private CharSequence ellipsize(TextView textView, TLRPC$ChatInvite tLRPC$ChatInvite, int i) {
        String str = tLRPC$ChatInvite.participants.get(i).first_name;
        if (str == null) {
            str = "";
        }
        return TextUtils.ellipsize(str.trim(), textView.getPaint(), AndroidUtilities.m104dp(120), TextUtils.TruncateAt.END);
    }

    private Drawable getScamDrawable(int i) {
        return i == 0 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable;
    }
}
