package p033j$.util.stream;
/* renamed from: j$.util.stream.M4 */
/* loaded from: classes2.dex */
class RunnableC2934M4 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f882a;

    /* renamed from: b */
    final /* synthetic */ Runnable f883b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2934M4(Runnable runnable, Runnable runnable2) {
        this.f882a = runnable;
        this.f883b = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f882a.run();
            this.f883b.run();
        } catch (Throwable th) {
            try {
                this.f883b.run();
            } catch (Throwable th2) {
                try {
                    th.addSuppressed(th2);
                } catch (Throwable unused) {
                }
            }
            throw th;
        }
    }
}
