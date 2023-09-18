package p033j$.util.stream;
/* renamed from: j$.util.stream.M4 */
/* loaded from: classes2.dex */
class RunnableC2989M4 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f883a;

    /* renamed from: b */
    final /* synthetic */ Runnable f884b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2989M4(Runnable runnable, Runnable runnable2) {
        this.f883a = runnable;
        this.f884b = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f883a.run();
            this.f884b.run();
        } catch (Throwable th) {
            try {
                this.f884b.run();
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
