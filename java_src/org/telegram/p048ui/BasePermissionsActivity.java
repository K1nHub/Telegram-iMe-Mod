package org.telegram.p048ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.camera.CameraController;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.BasePermissionsActivity */
/* loaded from: classes5.dex */
public class BasePermissionsActivity extends Activity {
    protected int currentAccount = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (iArr == null) {
            iArr = new int[0];
        }
        if (strArr == null) {
            strArr = new String[0];
        }
        boolean z = iArr.length > 0 && iArr[0] == 0;
        if (i == 104) {
            if (z) {
                GroupCallActivity groupCallActivity = GroupCallActivity.groupCallInstance;
                if (groupCallActivity != null) {
                    groupCallActivity.enableCamera();
                }
            } else {
                showPermissionErrorAlert(C3301R.C3306raw.permission_request_camera, LocaleController.getString("VoipNeedCameraPermission", C3301R.string.VoipNeedCameraPermission));
            }
        } else if (i == 4 || i == 151) {
            if (!z) {
                showPermissionErrorAlert(C3301R.C3306raw.permission_request_folder, i == 151 ? LocaleController.getString("PermissionNoStorageAvatar", C3301R.string.PermissionNoStorageAvatar) : LocaleController.getString("PermissionStorageWithHint", C3301R.string.PermissionStorageWithHint));
            } else {
                ImageLoader.getInstance().checkMediaPaths();
            }
        } else if (i == 5) {
            if (!z) {
                showPermissionErrorAlert(C3301R.C3306raw.permission_request_contacts, LocaleController.getString("PermissionNoContactsSharing", C3301R.string.PermissionNoContactsSharing));
                return false;
            }
            ContactsController.getInstance(this.currentAccount).forceImportContacts();
        } else if (i == 3 || i == 150) {
            int min = Math.min(strArr.length, iArr.length);
            boolean z2 = true;
            boolean z3 = true;
            for (int i2 = 0; i2 < min; i2++) {
                if ("android.permission.RECORD_AUDIO".equals(strArr[i2])) {
                    z2 = iArr[i2] == 0;
                } else if ("android.permission.CAMERA".equals(strArr[i2])) {
                    z3 = iArr[i2] == 0;
                }
            }
            if (i == 150 && !(z2 && z3)) {
                showPermissionErrorAlert(C3301R.C3306raw.permission_request_camera, LocaleController.getString("PermissionNoCameraMicVideo", C3301R.string.PermissionNoCameraMicVideo));
            } else if (!z2) {
                showPermissionErrorAlert(C3301R.C3306raw.permission_request_microphone, LocaleController.getString("PermissionNoAudioWithHint", C3301R.string.PermissionNoAudioWithHint));
            } else if (!z3) {
                showPermissionErrorAlert(C3301R.C3306raw.permission_request_camera, LocaleController.getString("PermissionNoCameraWithHint", C3301R.string.PermissionNoCameraWithHint));
            } else {
                if (SharedConfig.inappCamera) {
                    CameraController.getInstance().initCamera(null);
                }
                return false;
            }
        } else if (i == 18 || i == 19 || i == 20 || i == 22 || i == 34) {
            if (!z) {
                showPermissionErrorAlert(C3301R.C3306raw.permission_request_camera, LocaleController.getString("PermissionNoCameraWithHint", C3301R.string.PermissionNoCameraWithHint));
            }
        } else if (i == 2) {
            NotificationCenter.getGlobalInstance().postNotificationName(z ? NotificationCenter.locationPermissionGranted : NotificationCenter.locationPermissionDenied, new Object[0]);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AlertDialog createPermissionErrorAlert(int i, String str) {
        return new AlertDialog.Builder(this).setTopAnimation(i, 72, false, Theme.getColor("dialogTopBackground")).setMessage(AndroidUtilities.replaceTags(str)).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3301R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.BasePermissionsActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                BasePermissionsActivity.this.lambda$createPermissionErrorAlert$0(dialogInterface, i2);
            }
        }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3301R.string.ContactsPermissionAlertNotNow), null).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPermissionErrorAlert$0(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            startActivity(intent);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    private void showPermissionErrorAlert(int i, String str) {
        createPermissionErrorAlert(i, str).show();
    }
}
