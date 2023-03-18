package p034j$.util.stream;
/* renamed from: j$.util.stream.M4 */
/* loaded from: classes2.dex */
class RunnableC2692M4 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f793a;

    /* renamed from: b */
    final /* synthetic */ Runnable f794b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2692M4(Runnable runnable, Runnable runnable2) {
        this.f793a = runnable;
        this.f794b = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f793a.run();
            this.f794b.run();
        } catch (Throwable th) {
            try {
                this.f794b.run();
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
