package p033j$.util.stream;
/* renamed from: j$.util.stream.M4 */
/* loaded from: classes2.dex */
class RunnableC2927M4 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f932a;

    /* renamed from: b */
    final /* synthetic */ Runnable f933b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2927M4(Runnable runnable, Runnable runnable2) {
        this.f932a = runnable;
        this.f933b = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f932a.run();
            this.f933b.run();
        } catch (Throwable th) {
            try {
                this.f933b.run();
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
