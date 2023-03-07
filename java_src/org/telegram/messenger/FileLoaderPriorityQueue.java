package org.telegram.messenger;

import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import java.util.ArrayList;
import java.util.Objects;
import org.telegram.tgnet.ConnectionsManager;
/* loaded from: classes4.dex */
public class FileLoaderPriorityQueue {
    private final int maxActiveOperationsCount;
    String name;
    ArrayList<FileLoadOperation> allOperations = new ArrayList<>();
    ArrayList<FileLoadOperation> activeOperations = new ArrayList<>();
    private int PRIORITY_VALUE_MAX = ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
    private int PRIORITY_VALUE_NORMAL = 65536;
    private int PRIORITY_VALUE_LOW = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileLoaderPriorityQueue(String str, int i) {
        this.name = str;
        this.maxActiveOperationsCount = i;
    }

    public void add(FileLoadOperation fileLoadOperation) {
        if (fileLoadOperation == null) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (i2 < this.allOperations.size()) {
            if (this.allOperations.get(i2) == fileLoadOperation || Objects.equals(this.allOperations.get(i2).getFileName(), fileLoadOperation.getFileName())) {
                this.allOperations.remove(i2);
                i2--;
            }
            i2++;
        }
        while (true) {
            if (i >= this.allOperations.size()) {
                i = -1;
                break;
            } else if (fileLoadOperation.getPriority() > this.allOperations.get(i).getPriority()) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            this.allOperations.add(i, fileLoadOperation);
        } else {
            this.allOperations.add(fileLoadOperation);
        }
    }

    public void cancel(FileLoadOperation fileLoadOperation) {
        if (fileLoadOperation == null) {
            return;
        }
        this.allOperations.remove(fileLoadOperation);
        fileLoadOperation.cancel();
    }

    public void checkLoadingOperations() {
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < this.allOperations.size(); i2++) {
            FileLoadOperation fileLoadOperation = this.allOperations.get(i2);
            if (i2 > 0 && !z && i > this.PRIORITY_VALUE_LOW && fileLoadOperation.getPriority() == this.PRIORITY_VALUE_LOW) {
                z = true;
            }
            if (!z && i2 < this.maxActiveOperationsCount) {
                fileLoadOperation.start();
            } else if (fileLoadOperation.wasStarted()) {
                fileLoadOperation.pause();
            }
            i = fileLoadOperation.getPriority();
        }
    }

    public void remove(FileLoadOperation fileLoadOperation) {
        if (fileLoadOperation == null) {
            return;
        }
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(fileLoadOperation.currentAccount);
        if (connectionsManager != null && connectionsManager.getConnectionState() == 2) {
            fileLoadOperation.cancel();
        }
        this.allOperations.remove(fileLoadOperation);
    }
}
