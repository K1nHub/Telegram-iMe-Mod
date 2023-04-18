package p034j$.util.stream;
/* renamed from: j$.util.stream.M4 */
/* loaded from: classes2.dex */
class RunnableC2769M4 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f794a;

    /* renamed from: b */
    final /* synthetic */ Runnable f795b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2769M4(Runnable runnable, Runnable runnable2) {
        this.f794a = runnable;
        this.f795b = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f794a.run();
            this.f795b.run();
        } catch (Throwable th) {
            try {
                this.f795b.run();
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
