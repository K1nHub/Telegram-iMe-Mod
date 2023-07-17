package com.microsoft.appcenter.distribute;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
class BrowserUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void openBrowser(String url, Activity activity) {
        try {
            openBrowserWithoutIntentChooser(url, activity);
        } catch (SecurityException e) {
            AppCenterLog.warn("AppCenterDistribute", "Browser could not be opened by trying to avoid intent chooser, starting implicit intent instead.", e);
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
        }
    }

    private static void openBrowserWithoutIntentChooser(String url, Activity activity) throws SecurityException {
        String str;
        String str2;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
        List<ResolveInfo> queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.isEmpty()) {
            AppCenterLog.error("AppCenterDistribute", "No browser found on device, abort login.");
            return;
        }
        ResolveInfo resolveActivity = activity.getPackageManager().resolveActivity(intent, 65536);
        String str3 = null;
        if (resolveActivity != null) {
            ActivityInfo activityInfo = resolveActivity.activityInfo;
            str2 = activityInfo.packageName;
            str = activityInfo.name;
            AppCenterLog.debug("AppCenterDistribute", "Default browser seems to be " + str2 + "/" + str);
        } else {
            str = null;
            str2 = null;
        }
        Iterator<ResolveInfo> it = queryIntentActivities.iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            ActivityInfo activityInfo2 = it.next().activityInfo;
            if (activityInfo2.packageName.equals(str2) && activityInfo2.name.equals(str)) {
                AppCenterLog.debug("AppCenterDistribute", "And its not the picker.");
                str3 = str2;
                break;
            }
        }
        if (resolveActivity != null && str3 == null) {
            AppCenterLog.debug("AppCenterDistribute", "Default browser is actually a picker...");
        }
        if (str3 == null) {
            AppCenterLog.debug("AppCenterDistribute", "Picking first browser in list.");
            ActivityInfo activityInfo3 = queryIntentActivities.iterator().next().activityInfo;
            str3 = activityInfo3.packageName;
            str = activityInfo3.name;
        }
        AppCenterLog.debug("AppCenterDistribute", "Launch browser=" + str3 + "/" + str);
        intent.setClassName(str3, str);
        activity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String appendUri(String uri, String appendQuery) throws URISyntaxException {
        URI uri2 = new URI(uri);
        String query = uri2.getQuery();
        if (query != null) {
            appendQuery = query + "&" + appendQuery;
        }
        return new URI(uri2.getScheme(), uri2.getAuthority(), uri2.getPath(), appendQuery, uri2.getFragment()).toString();
    }
}
