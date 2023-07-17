package com.microsoft.appcenter.distribute.permissions;

import android.content.Context;
import com.microsoft.appcenter.distribute.permissions.PermissionRequestActivity;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
/* loaded from: classes4.dex */
public class PermissionUtils {
    public static int[] permissionsState(Context context, String... permissions) {
        if (permissions == null) {
            return null;
        }
        int[] iArr = new int[permissions.length];
        for (int i = 0; i < permissions.length; i++) {
            iArr[i] = context.checkCallingOrSelfPermission(permissions[i]);
        }
        return iArr;
    }

    public static boolean permissionsAreGranted(Context context, String... permissions) {
        return permissionsAreGranted(permissionsState(context, permissions));
    }

    public static boolean permissionsAreGranted(int[] permissionsState) {
        for (int i : permissionsState) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    public static AppCenterFuture<PermissionRequestActivity.Result> requestPermissions(Context context, String... permissions) {
        return PermissionRequestActivity.requestPermissions(context, permissions);
    }
}
