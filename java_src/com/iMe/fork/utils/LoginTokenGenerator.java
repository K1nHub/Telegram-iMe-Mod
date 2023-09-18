package com.iMe.fork.utils;

import android.util.Base64;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_auth_authorization;
import org.telegram.tgnet.TLRPC$TL_auth_exportLoginToken;
import org.telegram.tgnet.TLRPC$TL_auth_importLoginToken;
import org.telegram.tgnet.TLRPC$TL_auth_loginToken;
import org.telegram.tgnet.TLRPC$TL_auth_loginTokenMigrateTo;
import org.telegram.tgnet.TLRPC$TL_auth_loginTokenSuccess;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$auth_Authorization;
import org.telegram.tgnet.TLRPC$auth_LoginToken;
/* compiled from: LoginTokenGenerator.kt */
/* loaded from: classes4.dex */
public final class LoginTokenGenerator implements NotificationCenter.NotificationCenterDelegate {
    private final Runnable autoRefreshRunnable = new Runnable() { // from class: com.iMe.fork.utils.LoginTokenGenerator$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            LoginTokenGenerator.autoRefreshRunnable$lambda$0(LoginTokenGenerator.this);
        }
    };
    private final int currentAccount;
    private Delegate delegate;
    private boolean isDestroyed;
    private int loginTokenRequestId;
    private boolean needAutoRefresh;

    /* compiled from: LoginTokenGenerator.kt */
    /* loaded from: classes4.dex */
    public interface Delegate {
        void onError();

        void onTokenAuthorized(TLRPC$TL_auth_authorization tLRPC$TL_auth_authorization);

        void onTokenGenerated(String str, int i);

        void onTwoStepVerificationNeeded();
    }

    public LoginTokenGenerator(int i) {
        this.currentAccount = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void autoRefreshRunnable$lambda$0(LoginTokenGenerator this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.loginTokenRequestId != 0) {
            return;
        }
        this$0.checkLoginToken();
    }

    public final void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    public final void start(boolean z) {
        this.isDestroyed = false;
        this.needAutoRefresh = z;
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.loginTokenDidAccepted);
        checkLoginToken();
    }

    public final void destroy() {
        if (this.isDestroyed) {
            return;
        }
        if (this.needAutoRefresh) {
            AndroidUtilities.cancelRunOnUIThread(this.autoRefreshRunnable);
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.loginTokenDidAccepted);
        if (this.loginTokenRequestId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.loginTokenRequestId, true);
            this.loginTokenRequestId = 0;
        }
        this.isDestroyed = true;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.loginTokenDidAccepted) {
            checkLoginToken();
        }
    }

    private final void checkLoginToken() {
        if (this.isDestroyed) {
            return;
        }
        TLRPC$TL_auth_exportLoginToken tLRPC$TL_auth_exportLoginToken = new TLRPC$TL_auth_exportLoginToken();
        tLRPC$TL_auth_exportLoginToken.api_id = BuildVars.APP_ID;
        tLRPC$TL_auth_exportLoginToken.api_hash = BuildVars.APP_HASH;
        for (int i = 0; i < 5; i++) {
            if (UserConfig.getInstance(i).isClientActivated()) {
                tLRPC$TL_auth_exportLoginToken.except_ids.add(Long.valueOf(UserConfig.getInstance(i).getClientUserId()));
            }
        }
        this.loginTokenRequestId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_auth_exportLoginToken, new RequestDelegate() { // from class: com.iMe.fork.utils.LoginTokenGenerator$$ExternalSyntheticLambda3
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                LoginTokenGenerator.checkLoginToken$lambda$3(LoginTokenGenerator.this, tLObject, tLRPC$TL_error);
            }
        }, 27);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkLoginToken$lambda$3(final LoginTokenGenerator this$0, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.utils.LoginTokenGenerator$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LoginTokenGenerator.checkLoginToken$lambda$3$lambda$2(TLRPC$TL_error.this, this$0, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkLoginToken$lambda$3$lambda$2(TLRPC$TL_error tLRPC$TL_error, LoginTokenGenerator this$0, TLObject tLObject) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (tLRPC$TL_error != null) {
            this$0.handleLoginTokenError(tLRPC$TL_error);
        } else {
            this$0.handleLoginTokenResult((TLRPC$auth_LoginToken) tLObject);
        }
    }

    private final void handleLoginTokenResult(TLRPC$auth_LoginToken tLRPC$auth_LoginToken) {
        if (this.isDestroyed) {
            return;
        }
        if (tLRPC$auth_LoginToken instanceof TLRPC$TL_auth_loginToken) {
            this.loginTokenRequestId = 0;
            TLRPC$TL_auth_loginToken tLRPC$TL_auth_loginToken = (TLRPC$TL_auth_loginToken) tLRPC$auth_LoginToken;
            int max = Math.max(0, tLRPC$TL_auth_loginToken.expires - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) - 2;
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.onTokenGenerated(Base64.encodeToString(tLRPC$TL_auth_loginToken.token, 11), max);
            }
            if (this.needAutoRefresh) {
                AndroidUtilities.runOnUIThread(this.autoRefreshRunnable, TimeUnit.SECONDS.toMillis(max));
            }
        } else if (tLRPC$auth_LoginToken instanceof TLRPC$TL_auth_loginTokenMigrateTo) {
            TLRPC$TL_auth_loginTokenMigrateTo tLRPC$TL_auth_loginTokenMigrateTo = (TLRPC$TL_auth_loginTokenMigrateTo) tLRPC$auth_LoginToken;
            ConnectionsManager.native_moveToDatacenter(this.currentAccount, tLRPC$TL_auth_loginTokenMigrateTo.dc_id);
            TLRPC$TL_auth_importLoginToken tLRPC$TL_auth_importLoginToken = new TLRPC$TL_auth_importLoginToken();
            tLRPC$TL_auth_importLoginToken.token = tLRPC$TL_auth_loginTokenMigrateTo.token;
            this.loginTokenRequestId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_auth_importLoginToken, new RequestDelegate() { // from class: com.iMe.fork.utils.LoginTokenGenerator$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    LoginTokenGenerator.handleLoginTokenResult$lambda$6(LoginTokenGenerator.this, tLObject, tLRPC$TL_error);
                }
            }, 27);
        } else if (tLRPC$auth_LoginToken instanceof TLRPC$TL_auth_loginTokenSuccess) {
            Delegate delegate2 = this.delegate;
            if (delegate2 != null) {
                TLRPC$auth_Authorization tLRPC$auth_Authorization = ((TLRPC$TL_auth_loginTokenSuccess) tLRPC$auth_LoginToken).authorization;
                Intrinsics.checkNotNull(tLRPC$auth_Authorization, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_auth_authorization");
                delegate2.onTokenAuthorized((TLRPC$TL_auth_authorization) tLRPC$auth_Authorization);
            }
            destroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleLoginTokenResult$lambda$6(final LoginTokenGenerator this$0, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.utils.LoginTokenGenerator$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                LoginTokenGenerator.handleLoginTokenResult$lambda$6$lambda$5(TLRPC$TL_error.this, this$0, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleLoginTokenResult$lambda$6$lambda$5(TLRPC$TL_error tLRPC$TL_error, LoginTokenGenerator this$0, TLObject tLObject) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (tLRPC$TL_error != null) {
            this$0.handleLoginTokenError(tLRPC$TL_error);
        } else {
            this$0.handleLoginTokenResult((TLRPC$auth_LoginToken) tLObject);
        }
    }

    private final void handleLoginTokenError(TLRPC$TL_error tLRPC$TL_error) {
        if (this.isDestroyed) {
            return;
        }
        this.loginTokenRequestId = 0;
        if (Intrinsics.areEqual(tLRPC$TL_error.text, "SESSION_PASSWORD_NEEDED")) {
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.onTwoStepVerificationNeeded();
            }
        } else {
            Delegate delegate2 = this.delegate;
            if (delegate2 != null) {
                delegate2.onError();
            }
        }
        destroy();
    }
}
