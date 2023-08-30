package org.solovyev.android.checkout;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
class PlayStoreBroadcastReceiver extends BroadcastReceiver {
    private final Context mContext;
    private final List<PlayStoreListener> mListeners = new ArrayList();
    private final Object mLock;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlayStoreBroadcastReceiver(Context context, Object obj) {
        this.mContext = context;
        this.mLock = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addListener(PlayStoreListener playStoreListener) {
        synchronized (this.mLock) {
            this.mListeners.contains(playStoreListener);
            StringBuilder sb = new StringBuilder();
            sb.append("Listener ");
            sb.append(playStoreListener);
            sb.append(" is already in the list");
            this.mListeners.add(playStoreListener);
            if (this.mListeners.size() == 1) {
                this.mContext.registerReceiver(this, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeListener(PlayStoreListener playStoreListener) {
        synchronized (this.mLock) {
            this.mListeners.contains(playStoreListener);
            StringBuilder sb = new StringBuilder();
            sb.append("Listener ");
            sb.append(playStoreListener);
            sb.append(" is not in the list");
            this.mListeners.remove(playStoreListener);
            if (this.mListeners.size() == 0) {
                this.mContext.unregisterReceiver(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean contains(PlayStoreListener playStoreListener) {
        boolean contains;
        synchronized (this.mLock) {
            contains = this.mListeners.contains(playStoreListener);
        }
        return contains;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ArrayList<PlayStoreListener> arrayList;
        if (intent == null || !TextUtils.equals(intent.getAction(), "com.android.vending.billing.PURCHASES_UPDATED")) {
            return;
        }
        synchronized (this.mLock) {
            arrayList = new ArrayList(this.mListeners);
        }
        for (PlayStoreListener playStoreListener : arrayList) {
            playStoreListener.onPurchasesChanged();
        }
    }
}
