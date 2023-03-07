package org.solovyev.android.checkout;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class PendingRequests implements Runnable {
    private final List<RequestRunnable> mList = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(RequestRunnable requestRunnable) {
        synchronized (this.mList) {
            Billing.debug("Adding pending request: " + requestRunnable);
            this.mList.add(requestRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancelAll() {
        synchronized (this.mList) {
            Billing.debug("Cancelling all pending requests");
            Iterator<RequestRunnable> it = this.mList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancelAll(Object obj) {
        synchronized (this.mList) {
            Billing.debug("Cancelling all pending requests with tag=" + obj);
            Iterator<RequestRunnable> it = this.mList.iterator();
            while (it.hasNext()) {
                RequestRunnable next = it.next();
                Object tag = next.getTag();
                if (tag == obj) {
                    next.cancel();
                    it.remove();
                } else if (tag == null || obj != null) {
                    if (tag != null && tag.equals(obj)) {
                        next.cancel();
                        it.remove();
                    }
                }
            }
        }
    }

    RequestRunnable pop() {
        RequestRunnable remove;
        synchronized (this.mList) {
            remove = !this.mList.isEmpty() ? this.mList.remove(0) : null;
            if (remove != null) {
                Billing.debug("Removing pending request: " + remove);
            }
        }
        return remove;
    }

    RequestRunnable peek() {
        RequestRunnable requestRunnable;
        synchronized (this.mList) {
            requestRunnable = !this.mList.isEmpty() ? this.mList.get(0) : null;
        }
        return requestRunnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        RequestRunnable peek = peek();
        while (peek != null) {
            Billing.debug("Running pending request: " + peek);
            if (!peek.run()) {
                return;
            }
            remove(peek);
            peek = peek();
        }
    }

    private void remove(RequestRunnable requestRunnable) {
        synchronized (this.mList) {
            Iterator<RequestRunnable> it = this.mList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next() == requestRunnable) {
                    Billing.debug("Removing pending request: " + requestRunnable);
                    it.remove();
                    break;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onConnectionFailed() {
        RequestRunnable pop = pop();
        while (pop != null) {
            Request request = pop.getRequest();
            if (request != null) {
                request.onError(10000);
                pop.cancel();
            }
            pop = pop();
        }
    }
}
