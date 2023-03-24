package org.telegram.p048ui;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.BulletinFactory;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.Components.Switch;
import org.telegram.p048ui.SessionBottomSheet;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_account_changeAuthorizationSettings;
import org.telegram.tgnet.TLRPC$TL_authorization;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.SessionBottomSheet */
/* loaded from: classes5.dex */
public class SessionBottomSheet extends BottomSheet {
    RLottieImageView imageView;
    BaseFragment parentFragment;
    TLRPC$TL_authorization session;

    /* renamed from: org.telegram.ui.SessionBottomSheet$Callback */
    /* loaded from: classes5.dex */
    public interface Callback {
        void onSessionTerminated(TLRPC$TL_authorization tLRPC$TL_authorization);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$uploadSessionSettings$0(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public SessionBottomSheet(BaseFragment baseFragment, final TLRPC$TL_authorization tLRPC$TL_authorization, boolean z, Callback callback) {
        super(baseFragment.getParentActivity(), false);
        String formatDateTime;
        setOpenNoDelay(true);
        Activity parentActivity = baseFragment.getParentActivity();
        this.session = tLRPC$TL_authorization;
        this.parentFragment = baseFragment;
        fixNavigationBar();
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        RLottieImageView rLottieImageView = new RLottieImageView(parentActivity);
        this.imageView = rLottieImageView;
        rLottieImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SessionBottomSheet.this.imageView.isPlaying() || SessionBottomSheet.this.imageView.getAnimatedDrawable() == null) {
                    return;
                }
                SessionBottomSheet.this.imageView.getAnimatedDrawable().setCurrentFrame(40);
                SessionBottomSheet.this.imageView.playAnimation();
            }
        });
        this.imageView.setScaleType(ImageView.ScaleType.CENTER);
        linearLayout.addView(this.imageView, LayoutHelper.createLinear(70, 70, 1, 0, 16, 0, 0));
        TextView textView = new TextView(parentActivity);
        textView.setTextSize(2, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 21, 12, 21, 0));
        TextView textView2 = new TextView(parentActivity);
        textView2.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        textView2.setTextSize(2, 13.0f);
        textView2.setGravity(17);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 21, 4, 21, 21));
        if ((tLRPC$TL_authorization.flags & 1) != 0) {
            formatDateTime = LocaleController.getString("Online", C3301R.string.Online);
        } else {
            formatDateTime = LocaleController.formatDateTime(tLRPC$TL_authorization.date_active);
        }
        textView2.setText(formatDateTime);
        StringBuilder sb = new StringBuilder();
        if (tLRPC$TL_authorization.device_model.length() != 0) {
            sb.append(tLRPC$TL_authorization.device_model);
        }
        if (sb.length() == 0) {
            if (tLRPC$TL_authorization.platform.length() != 0) {
                sb.append(tLRPC$TL_authorization.platform);
            }
            if (tLRPC$TL_authorization.system_version.length() != 0) {
                if (tLRPC$TL_authorization.platform.length() != 0) {
                    sb.append(" ");
                }
                sb.append(tLRPC$TL_authorization.system_version);
            }
        }
        textView.setText(sb);
        setAnimation(tLRPC$TL_authorization, this.imageView);
        ItemView itemView = new ItemView(parentActivity, false);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(tLRPC$TL_authorization.app_name);
        sb2.append(" ");
        sb2.append(tLRPC$TL_authorization.app_version);
        itemView.valueText.setText(sb2);
        Drawable mutate = ContextCompat.getDrawable(parentActivity, C3301R.C3303drawable.menu_devices).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.SRC_IN));
        itemView.iconView.setImageDrawable(mutate);
        itemView.descriptionText.setText(LocaleController.getString("Application", C3301R.string.Application));
        linearLayout.addView(itemView);
        if (tLRPC$TL_authorization.country.length() != 0) {
            ItemView itemView2 = new ItemView(parentActivity, false);
            itemView2.valueText.setText(tLRPC$TL_authorization.country);
            Drawable mutate2 = ContextCompat.getDrawable(parentActivity, C3301R.C3303drawable.msg_location).mutate();
            mutate2.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.SRC_IN));
            itemView2.iconView.setImageDrawable(mutate2);
            itemView2.descriptionText.setText(LocaleController.getString(RtspHeaders.LOCATION, C3301R.string.Location));
            itemView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SessionBottomSheet.this.copyText(tLRPC$TL_authorization.country);
                }
            });
            itemView2.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.SessionBottomSheet.3
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    SessionBottomSheet.this.copyText(tLRPC$TL_authorization.country);
                    return true;
                }
            });
            itemView2.setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21"), 2));
            linearLayout.addView(itemView2);
            itemView.needDivider = true;
            itemView = itemView2;
        }
        if (tLRPC$TL_authorization.f1535ip.length() != 0) {
            ItemView itemView3 = new ItemView(parentActivity, false);
            itemView3.valueText.setText(tLRPC$TL_authorization.f1535ip);
            Drawable mutate3 = ContextCompat.getDrawable(parentActivity, C3301R.C3303drawable.msg_language).mutate();
            mutate3.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.SRC_IN));
            itemView3.iconView.setImageDrawable(mutate3);
            itemView3.descriptionText.setText(LocaleController.getString("IpAddress", C3301R.string.IpAddress));
            itemView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SessionBottomSheet.this.copyText(tLRPC$TL_authorization.f1535ip);
                }
            });
            itemView3.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.SessionBottomSheet.5
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    SessionBottomSheet.this.copyText(tLRPC$TL_authorization.country);
                    return true;
                }
            });
            itemView3.setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21"), 2));
            linearLayout.addView(itemView3);
            itemView.needDivider = true;
            itemView = itemView3;
        }
        if (secretChatsEnabled(tLRPC$TL_authorization)) {
            final ItemView itemView4 = new ItemView(parentActivity, true);
            itemView4.valueText.setText(LocaleController.getString("AcceptSecretChats", C3301R.string.AcceptSecretChats));
            Drawable mutate4 = ContextCompat.getDrawable(parentActivity, C3301R.C3303drawable.msg_secret).mutate();
            mutate4.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.SRC_IN));
            itemView4.iconView.setImageDrawable(mutate4);
            itemView4.switchView.setChecked(!tLRPC$TL_authorization.encrypted_requests_disabled, false);
            itemView4.setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21"), 7));
            itemView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Switch r3 = itemView4.switchView;
                    r3.setChecked(!r3.isChecked(), true);
                    tLRPC$TL_authorization.encrypted_requests_disabled = !itemView4.switchView.isChecked();
                    SessionBottomSheet.this.uploadSessionSettings();
                }
            });
            itemView.needDivider = true;
            itemView4.descriptionText.setText(LocaleController.getString("AcceptSecretChatsDescription", C3301R.string.AcceptSecretChatsDescription));
            linearLayout.addView(itemView4);
            itemView = itemView4;
        }
        final ItemView itemView5 = new ItemView(parentActivity, true);
        itemView5.valueText.setText(LocaleController.getString("AcceptCalls", C3301R.string.AcceptCalls));
        Drawable mutate5 = ContextCompat.getDrawable(parentActivity, C3301R.C3303drawable.msg_calls).mutate();
        mutate5.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.SRC_IN));
        itemView5.iconView.setImageDrawable(mutate5);
        itemView5.switchView.setChecked(!tLRPC$TL_authorization.call_requests_disabled, false);
        itemView5.setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21"), 7));
        itemView5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Switch r3 = itemView5.switchView;
                r3.setChecked(!r3.isChecked(), true);
                tLRPC$TL_authorization.call_requests_disabled = !itemView5.switchView.isChecked();
                SessionBottomSheet.this.uploadSessionSettings();
            }
        });
        itemView.needDivider = true;
        itemView5.descriptionText.setText(LocaleController.getString("AcceptCallsChatsDescription", C3301R.string.AcceptCallsChatsDescription));
        linearLayout.addView(itemView5);
        if (!z) {
            TextView textView3 = new TextView(parentActivity);
            textView3.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
            textView3.setGravity(17);
            textView3.setTextSize(1, 14.0f);
            textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView3.setText(LocaleController.getString("TerminateSession", C3301R.string.TerminateSession));
            textView3.setTextColor(Theme.getColor("featuredStickers_buttonText"));
            textView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), Theme.getColor("chat_attachAudioBackground"), ColorUtils.setAlphaComponent(Theme.getColor("windowBackgroundWhite"), 120)));
            linearLayout.addView(textView3, LayoutHelper.createFrame(-1, 48, 0, 16, 15, 16, 16));
            textView3.setOnClickListener(new View$OnClickListenerC64698(callback, tLRPC$TL_authorization, baseFragment));
        }
        ScrollView scrollView = new ScrollView(parentActivity);
        scrollView.addView(linearLayout);
        setCustomView(scrollView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.SessionBottomSheet$8 */
    /* loaded from: classes5.dex */
    public class View$OnClickListenerC64698 implements View.OnClickListener {
        final /* synthetic */ Callback val$callback;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ TLRPC$TL_authorization val$session;

        View$OnClickListenerC64698(Callback callback, TLRPC$TL_authorization tLRPC$TL_authorization, BaseFragment baseFragment) {
            this.val$callback = callback;
            this.val$session = tLRPC$TL_authorization;
            this.val$fragment = baseFragment;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(SessionBottomSheet.this.parentFragment.getParentActivity());
            builder.setMessage(LocaleController.getString("TerminateSessionText", C3301R.string.TerminateSessionText));
            builder.setTitle(LocaleController.getString("AreYouSureSessionTitle", C3301R.string.AreYouSureSessionTitle));
            String string = LocaleController.getString("Terminate", C3301R.string.Terminate);
            final Callback callback = this.val$callback;
            final TLRPC$TL_authorization tLRPC$TL_authorization = this.val$session;
            builder.setPositiveButton(string, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet$8$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    SessionBottomSheet.View$OnClickListenerC64698.this.lambda$onClick$0(callback, tLRPC$TL_authorization, dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
            AlertDialog create = builder.create();
            this.val$fragment.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed"));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(Callback callback, TLRPC$TL_authorization tLRPC$TL_authorization, DialogInterface dialogInterface, int i) {
            callback.onSessionTerminated(tLRPC$TL_authorization);
            SessionBottomSheet.this.dismiss();
        }
    }

    private boolean secretChatsEnabled(TLRPC$TL_authorization tLRPC$TL_authorization) {
        int i = tLRPC$TL_authorization.api_id;
        return (i == 2040 || i == 2496) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadSessionSettings() {
        TLRPC$TL_account_changeAuthorizationSettings tLRPC$TL_account_changeAuthorizationSettings = new TLRPC$TL_account_changeAuthorizationSettings();
        TLRPC$TL_authorization tLRPC$TL_authorization = this.session;
        tLRPC$TL_account_changeAuthorizationSettings.encrypted_requests_disabled = tLRPC$TL_authorization.encrypted_requests_disabled;
        tLRPC$TL_account_changeAuthorizationSettings.call_requests_disabled = tLRPC$TL_authorization.call_requests_disabled;
        tLRPC$TL_account_changeAuthorizationSettings.flags = 3;
        tLRPC$TL_account_changeAuthorizationSettings.hash = tLRPC$TL_authorization.hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_account_changeAuthorizationSettings, SessionBottomSheet$$ExternalSyntheticLambda1.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyText(final String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setItems(new CharSequence[]{LocaleController.getString("Copy", C3301R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                SessionBottomSheet.this.lambda$copyText$1(str, dialogInterface, i);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$copyText$1(String str, DialogInterface dialogInterface, int i) {
        ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", str));
        BulletinFactory.m28of(getContainer(), null).createCopyBulletin(LocaleController.getString("TextCopied", C3301R.string.TextCopied)).show();
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setAnimation(org.telegram.tgnet.TLRPC$TL_authorization r11, org.telegram.p048ui.Components.RLottieImageView r12) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.SessionBottomSheet.setAnimation(org.telegram.tgnet.TLRPC$TL_authorization, org.telegram.ui.Components.RLottieImageView):void");
    }

    /* renamed from: org.telegram.ui.SessionBottomSheet$ItemView */
    /* loaded from: classes5.dex */
    private static class ItemView extends FrameLayout {
        TextView descriptionText;
        ImageView iconView;
        boolean needDivider;
        Switch switchView;
        TextView valueText;

        public ItemView(Context context, boolean z) {
            super(context);
            this.needDivider = false;
            ImageView imageView = new ImageView(context);
            this.iconView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.iconView, LayoutHelper.createFrame(32, 32, 0, 12, 4, 0, 0));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2, 0, 64, 4, 0, 4));
            TextView textView = new TextView(context);
            this.valueText = textView;
            textView.setTextSize(2, 16.0f);
            this.valueText.setGravity(3);
            this.valueText.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            linearLayout.addView(this.valueText, LayoutHelper.createLinear(-1, -2, 0, 0, 0, z ? 64 : 0, 0));
            TextView textView2 = new TextView(context);
            this.descriptionText = textView2;
            textView2.setTextSize(2, 13.0f);
            this.descriptionText.setGravity(3);
            this.descriptionText.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
            linearLayout.addView(this.descriptionText, LayoutHelper.createLinear(-1, -2, 0, 0, 4, z ? 64 : 0, 0));
            setPadding(0, AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4));
            if (z) {
                Switch r2 = new Switch(context);
                this.switchView = r2;
                r2.setDrawIconType(1);
                addView(this.switchView, LayoutHelper.createFrame(37, 40, 21, 21, 0, 21, 0));
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.needDivider) {
                canvas.drawRect(AndroidUtilities.m50dp(64), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            int i;
            String str;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (this.switchView != null) {
                accessibilityNodeInfo.setClassName("android.widget.Switch");
                accessibilityNodeInfo.setCheckable(true);
                accessibilityNodeInfo.setChecked(this.switchView.isChecked());
                StringBuilder sb = new StringBuilder();
                sb.append((Object) this.valueText.getText());
                sb.append("\n");
                sb.append((Object) this.descriptionText.getText());
                sb.append("\n");
                if (this.switchView.isChecked()) {
                    i = C3301R.string.NotificationsOn;
                    str = "NotificationsOn";
                } else {
                    i = C3301R.string.NotificationsOff;
                    str = "NotificationsOff";
                }
                sb.append(LocaleController.getString(str, i));
                accessibilityNodeInfo.setText(sb.toString());
            }
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        this.imageView.playAnimation();
    }
}
