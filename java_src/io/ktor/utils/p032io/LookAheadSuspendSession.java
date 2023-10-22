package io.ktor.utils.p032io;

import kotlin.coroutines.Continuation;
/* compiled from: LookAheadSession.kt */
/* renamed from: io.ktor.utils.io.LookAheadSuspendSession */
/* loaded from: classes4.dex */
public interface LookAheadSuspendSession extends LookAheadSession {
    Object awaitAtLeast(int i, Continuation<? super Boolean> continuation);
}
