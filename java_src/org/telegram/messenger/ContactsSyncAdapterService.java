package org.telegram.messenger;

import android.accounts.Account;
import android.accounts.OperationCanceledException;
import android.app.Service;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.SyncResult;
import android.os.Bundle;
import android.os.IBinder;
/* loaded from: classes4.dex */
public class ContactsSyncAdapterService extends Service {
    private static SyncAdapterImpl sSyncAdapter;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class SyncAdapterImpl extends AbstractThreadedSyncAdapter {
        public SyncAdapterImpl(Context context) {
            super(context, true);
        }

        @Override // android.content.AbstractThreadedSyncAdapter
        public void onPerformSync(Account account, Bundle bundle, String str, ContentProviderClient contentProviderClient, SyncResult syncResult) {
            try {
                ContactsSyncAdapterService.performSync(account, bundle, str, contentProviderClient, syncResult);
            } catch (OperationCanceledException e) {
                FileLog.m97e(e);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return getSyncAdapter().getSyncAdapterBinder();
    }

    private SyncAdapterImpl getSyncAdapter() {
        if (sSyncAdapter == null) {
            sSyncAdapter = new SyncAdapterImpl(ApplicationLoader.applicationContext);
        }
        return sSyncAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void performSync(Account account, Bundle bundle, String str, ContentProviderClient contentProviderClient, SyncResult syncResult) throws OperationCanceledException {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m100d("performSync: " + account.toString());
        }
    }
}
