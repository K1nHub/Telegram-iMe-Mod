package com.microsoft.appcenter.distribute.permissions;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
import com.microsoft.appcenter.utils.async.DefaultAppCenterFuture;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class PermissionRequestActivity extends Activity {
    static final int REQUEST_CODE = PermissionRequestActivity.class.getName().hashCode();
    static DefaultAppCenterFuture<Result> sResultFuture;

    /* loaded from: classes4.dex */
    public static class Result {
        public final Exception exception;
        public final Map<String, Boolean> permissionRequestResults;

        public Result(Map<String, Boolean> permissionRequestResults, Exception exception) {
            this.permissionRequestResults = permissionRequestResults;
            this.exception = exception;
        }

        public boolean areAllPermissionsGranted() {
            Map<String, Boolean> map = this.permissionRequestResults;
            if (map == null || map.size() <= 0) {
                return false;
            }
            return !this.permissionRequestResults.containsValue(Boolean.FALSE);
        }
    }

    public static AppCenterFuture<Result> requestPermissions(Context context, String... permissions) {
        if (sResultFuture != null) {
            AppCenterLog.error("AppCenterDistribute", "Result future flag is null.");
            return null;
        }
        sResultFuture = new DefaultAppCenterFuture<>();
        Intent intent = new Intent(context, PermissionRequestActivity.class);
        intent.addFlags(268435456);
        intent.addFlags(536870912);
        intent.addFlags(65536);
        intent.putExtra("intent.extra.PERMISSIONS", permissions);
        context.startActivity(intent);
        return sResultFuture;
    }

    static void complete(Result result) {
        DefaultAppCenterFuture<Result> defaultAppCenterFuture = sResultFuture;
        if (defaultAppCenterFuture != null) {
            defaultAppCenterFuture.complete(result);
            sResultFuture = null;
            return;
        }
        AppCenterLog.debug("AppCenterDistribute", "The start of the activity was not called using the requestPermissions function or the future has already been completed");
    }

    private String[] getPermissionsList() {
        Bundle extras;
        Intent intent = getIntent();
        if (intent == null || (extras = intent.getExtras()) == null) {
            return null;
        }
        return extras.getStringArray("intent.extra.PERMISSIONS");
    }

    private Map<String, Boolean> getPermissionsRequestResultMap(String[] permissions, int[] results) {
        HashMap hashMap = new HashMap();
        if (permissions.length != results.length) {
            AppCenterLog.error("AppCenterDistribute", "Invalid argument array sizes.");
            return null;
        }
        for (int i = 0; i < permissions.length; i++) {
            hashMap.put(permissions[i], Boolean.valueOf(results[i] == 0));
        }
        return hashMap;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT < 23) {
            UnsupportedOperationException unsupportedOperationException = new UnsupportedOperationException("There is no need to request permissions in runtime on Android earlier than 6.0.");
            AppCenterLog.error("AppCenterDistribute", "Android version incompatible.", unsupportedOperationException);
            complete(new Result(null, unsupportedOperationException));
            finish();
            return;
        }
        String[] permissionsList = getPermissionsList();
        if (permissionsList == null) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Failed to get permissions list from intents extras.");
            AppCenterLog.error("AppCenterDistribute", "Failed to get permissions list.", illegalArgumentException);
            complete(new Result(null, illegalArgumentException));
            finish();
            return;
        }
        requestPermissions(permissionsList, REQUEST_CODE);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == REQUEST_CODE) {
            Map<String, Boolean> permissionsRequestResultMap = getPermissionsRequestResultMap(permissions, grantResults);
            if (permissionsRequestResultMap == null || permissionsRequestResultMap.size() == 0) {
                complete(new Result(null, new IllegalArgumentException("Error while getting permission request results.")));
                return;
            }
            complete(new Result(permissionsRequestResultMap, null));
            finish();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }
}
