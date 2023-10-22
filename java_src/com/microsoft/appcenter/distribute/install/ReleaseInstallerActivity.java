package com.microsoft.appcenter.distribute.install;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
import com.microsoft.appcenter.utils.async.DefaultAppCenterFuture;
/* loaded from: classes4.dex */
public class ReleaseInstallerActivity extends Activity {
    static DefaultAppCenterFuture<Result> sResultFuture;

    /* loaded from: classes4.dex */
    public static class Result {
        public final int code;

        public Result(int code, String message) {
            this.code = code;
        }
    }

    public static AppCenterFuture<Result> startActivityForResult(Context context, Intent trackedIntent) {
        if (sResultFuture != null) {
            AppCenterLog.error("AppCenterDistribute", "Another installing activity already in progress.");
            return null;
        }
        sResultFuture = new DefaultAppCenterFuture<>();
        Intent intent = new Intent(context, ReleaseInstallerActivity.class);
        intent.addFlags(268435456);
        intent.addFlags(536870912);
        intent.addFlags(65536);
        intent.putExtra("android.intent.extra.INTENT", trackedIntent);
        context.startActivity(intent);
        return sResultFuture;
    }

    private static void complete(Result result) {
        DefaultAppCenterFuture<Result> defaultAppCenterFuture = sResultFuture;
        if (defaultAppCenterFuture != null) {
            defaultAppCenterFuture.complete(result);
            sResultFuture = null;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = (Intent) getIntent().getParcelableExtra("android.intent.extra.INTENT");
        if (intent == null) {
            AppCenterLog.warn("AppCenterDistribute", "Missing extra intent.");
            finish();
            return;
        }
        try {
            startActivityForResult(intent, 0);
        } catch (SecurityException e) {
            complete(new Result(1, e.getMessage()));
            finish();
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        AppCenterLog.verbose("AppCenterDistribute", "Release installer activity result=" + resultCode);
        complete(new Result(resultCode, null));
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }
}
