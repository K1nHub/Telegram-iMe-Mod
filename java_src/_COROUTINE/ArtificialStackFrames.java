package _COROUTINE;
/* compiled from: CoroutineDebugging.kt */
/* loaded from: classes.dex */
public final class ArtificialStackFrames {
    public final StackTraceElement coroutineBoundary() {
        StackTraceElement artificialFrame;
        artificialFrame = CoroutineDebuggingKt.artificialFrame(new Exception(), _BOUNDARY.class.getSimpleName());
        return artificialFrame;
    }
}
