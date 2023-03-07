package p034j$.util.stream;
/* renamed from: j$.util.stream.M4 */
/* loaded from: classes2.dex */
class RunnableC2568M4 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f788a;

    /* renamed from: b */
    final /* synthetic */ Runnable f789b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2568M4(Runnable runnable, Runnable runnable2) {
        this.f788a = runnable;
        this.f789b = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f788a.run();
            this.f789b.run();
        } catch (Throwable th) {
            try {
                this.f789b.run();
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
