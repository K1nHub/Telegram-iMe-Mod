package com.microsoft.appcenter.crashes.ingestion.models.json;

import com.microsoft.appcenter.crashes.ingestion.models.Thread;
import com.microsoft.appcenter.ingestion.models.json.ModelFactory;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class ThreadFactory implements ModelFactory<Thread> {
    private static final ThreadFactory sInstance = new ThreadFactory();

    private ThreadFactory() {
    }

    public static ThreadFactory getInstance() {
        return sInstance;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.microsoft.appcenter.ingestion.models.json.ModelFactory
    public Thread create() {
        return new Thread();
    }

    @Override // com.microsoft.appcenter.ingestion.models.json.ModelFactory
    public List<Thread> createList(int capacity) {
        return new ArrayList(capacity);
    }
}
