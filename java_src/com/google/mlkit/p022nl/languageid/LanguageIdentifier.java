package com.google.mlkit.p022nl.languageid;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.gms.tasks.Task;
import java.io.Closeable;
/* compiled from: com.google.mlkit:language-id@@16.1.1 */
/* renamed from: com.google.mlkit.nl.languageid.LanguageIdentifier */
/* loaded from: classes3.dex */
public interface LanguageIdentifier extends LifecycleObserver, Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    void close();

    Task<String> identifyLanguage(String str);
}
