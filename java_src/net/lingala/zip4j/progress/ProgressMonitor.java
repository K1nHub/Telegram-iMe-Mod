package net.lingala.zip4j.progress;

import net.lingala.zip4j.exception.ZipException;
/* loaded from: classes6.dex */
public class ProgressMonitor {
    private boolean cancelAllTasks;
    private boolean pause;
    private int percentDone;
    private int state;
    private long totalWork;
    private long workCompleted;

    public void setCurrentOperation(int i) {
    }

    public void setFileName(String str) {
    }

    public void setResult(int i) {
    }

    public ProgressMonitor() {
        reset();
        this.percentDone = 0;
    }

    public int getState() {
        return this.state;
    }

    public void setState(int i) {
        this.state = i;
    }

    public void setTotalWork(long j) {
        this.totalWork = j;
    }

    public void updateWorkCompleted(long j) {
        long j2 = this.workCompleted + j;
        this.workCompleted = j2;
        long j3 = this.totalWork;
        if (j3 > 0) {
            int i = (int) ((j2 * 100) / j3);
            this.percentDone = i;
            if (i > 100) {
                this.percentDone = 100;
            }
        }
        while (this.pause) {
            try {
                Thread.sleep(150L);
            } catch (InterruptedException unused) {
            }
        }
    }

    public void endProgressMonitorSuccess() throws ZipException {
        reset();
    }

    public void endProgressMonitorError(Throwable th) throws ZipException {
        reset();
    }

    public void reset() {
        this.state = 0;
        this.totalWork = 0L;
        this.workCompleted = 0L;
        this.percentDone = 0;
    }

    public boolean isCancelAllTasks() {
        return this.cancelAllTasks;
    }
}
