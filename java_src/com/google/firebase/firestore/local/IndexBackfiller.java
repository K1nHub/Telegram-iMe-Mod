package com.google.firebase.firestore.local;

import com.google.firebase.firestore.local.IndexBackfiller;
import com.google.firebase.firestore.util.AsyncQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class IndexBackfiller {
    private static final long INITIAL_BACKFILL_DELAY_MS = TimeUnit.SECONDS.toMillis(15);
    private static final long REGULAR_BACKFILL_DELAY_MS = TimeUnit.MINUTES.toMillis(1);

    public IndexBackfiller(SQLitePersistence sQLitePersistence) {
    }

    /* loaded from: classes3.dex */
    public static class Results {
        Results(boolean z, int i, int i2) {
        }
    }

    /* loaded from: classes3.dex */
    public class BackfillScheduler implements Scheduler {
        private final AsyncQueue asyncQueue;
        private boolean hasRun = false;
        private final LocalStore localStore;

        public BackfillScheduler(AsyncQueue asyncQueue, LocalStore localStore) {
            this.asyncQueue = asyncQueue;
            this.localStore = localStore;
        }

        @Override // com.google.firebase.firestore.local.Scheduler
        public void start() {
            scheduleBackfill();
        }

        private void scheduleBackfill() {
            this.asyncQueue.enqueueAfterDelay(AsyncQueue.TimerId.INDEX_BACKFILL, this.hasRun ? IndexBackfiller.REGULAR_BACKFILL_DELAY_MS : IndexBackfiller.INITIAL_BACKFILL_DELAY_MS, new Runnable() { // from class: com.google.firebase.firestore.local.IndexBackfiller$BackfillScheduler$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    IndexBackfiller.BackfillScheduler.this.lambda$scheduleBackfill$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$scheduleBackfill$0() {
            this.localStore.backfillIndexes(IndexBackfiller.this);
            this.hasRun = true;
            scheduleBackfill();
        }
    }

    public BackfillScheduler newScheduler(AsyncQueue asyncQueue, LocalStore localStore) {
        return new BackfillScheduler(asyncQueue, localStore);
    }

    public Results backfill() {
        return new Results(true, 0, 0);
    }
}
