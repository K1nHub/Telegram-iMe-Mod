package p033j$.util.stream;
/* renamed from: j$.util.stream.M4 */
/* loaded from: classes2.dex */
class RunnableC3073M4 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f892a;

    /* renamed from: b */
    final /* synthetic */ Runnable f893b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3073M4(Runnable runnable, Runnable runnable2) {
        this.f892a = runnable;
        this.f893b = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f892a.run();
            this.f893b.run();
        } catch (Throwable th) {
            try {
                this.f893b.run();
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
