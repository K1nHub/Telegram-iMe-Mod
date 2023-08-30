package org.telegram.messenger;

import android.net.Uri;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.upstream.BaseDataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.concurrent.CountDownLatch;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_documentAttributeFilename;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
/* loaded from: classes4.dex */
public class FileStreamLoadOperation extends BaseDataSource implements FileLoadOperationStream {
    private static final ConcurrentHashMap<Long, Integer> priorityMap = new ConcurrentHashMap<>();
    private long bytesRemaining;
    private CountDownLatch countDownLatch;
    private int currentAccount;
    File currentFile;
    private long currentOffset;
    private TLRPC$Document document;
    private RandomAccessFile file;
    private FileLoadOperation loadOperation;
    private boolean opened;
    private Object parentObject;
    private Uri uri;

    public FileStreamLoadOperation() {
        super(false);
    }

    @Deprecated
    public FileStreamLoadOperation(TransferListener transferListener) {
        this();
        if (transferListener != null) {
            addTransferListener(transferListener);
        }
    }

    public static int getStreamPrioriy(TLRPC$Document tLRPC$Document) {
        Integer num;
        if (tLRPC$Document == null || (num = priorityMap.get(Long.valueOf(tLRPC$Document.f1539id))) == null) {
            return 3;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.uri = dataSpec.uri;
        transferInitializing(dataSpec);
        int intValue = Utilities.parseInt((CharSequence) this.uri.getQueryParameter("account")).intValue();
        this.currentAccount = intValue;
        this.parentObject = FileLoader.getInstance(intValue).getParentObject(Utilities.parseInt((CharSequence) this.uri.getQueryParameter("rid")).intValue());
        TLRPC$TL_document tLRPC$TL_document = new TLRPC$TL_document();
        this.document = tLRPC$TL_document;
        tLRPC$TL_document.access_hash = Utilities.parseLong(this.uri.getQueryParameter("hash")).longValue();
        this.document.f1539id = Utilities.parseLong(this.uri.getQueryParameter(TtmlNode.ATTR_ID)).longValue();
        this.document.size = Utilities.parseLong(this.uri.getQueryParameter("size")).longValue();
        this.document.dc_id = Utilities.parseInt((CharSequence) this.uri.getQueryParameter("dc")).intValue();
        this.document.mime_type = this.uri.getQueryParameter("mime");
        this.document.file_reference = Utilities.hexToBytes(this.uri.getQueryParameter("reference"));
        TLRPC$TL_documentAttributeFilename tLRPC$TL_documentAttributeFilename = new TLRPC$TL_documentAttributeFilename();
        tLRPC$TL_documentAttributeFilename.file_name = this.uri.getQueryParameter(AppMeasurementSdk.ConditionalUserProperty.NAME);
        this.document.attributes.add(tLRPC$TL_documentAttributeFilename);
        if (this.document.mime_type.startsWith("video")) {
            this.document.attributes.add(new TLRPC$TL_documentAttributeVideo());
        } else if (this.document.mime_type.startsWith("audio")) {
            this.document.attributes.add(new TLRPC$TL_documentAttributeAudio());
        }
        FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
        TLRPC$Document tLRPC$Document = this.document;
        Object obj = this.parentObject;
        long j = dataSpec.position;
        this.currentOffset = j;
        this.loadOperation = fileLoader.loadStreamFile(this, tLRPC$Document, null, obj, j, false, getCurrentPriority());
        long j2 = dataSpec.length;
        if (j2 == -1) {
            j2 = this.document.size - dataSpec.position;
        }
        this.bytesRemaining = j2;
        if (j2 < 0) {
            throw new EOFException();
        }
        this.opened = true;
        transferStarted(dataSpec);
        FileLoadOperation fileLoadOperation = this.loadOperation;
        if (fileLoadOperation != null) {
            File currentFile = fileLoadOperation.getCurrentFile();
            this.currentFile = currentFile;
            if (currentFile != null) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(this.currentFile, "r");
                    this.file = randomAccessFile;
                    randomAccessFile.seek(this.currentOffset);
                } catch (Throwable unused) {
                }
            }
        }
        return this.bytesRemaining;
    }

    private int getCurrentPriority() {
        Integer num = (Integer) ConcurrentMap$EL.getOrDefault(priorityMap, Long.valueOf(this.document.f1539id), null);
        if (num != null) {
            return num.intValue();
        }
        return 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0019, code lost:
        if (r12.opened == false) goto L13;
     */
    @Override // com.google.android.exoplayer2.upstream.DataReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(byte[] r13, int r14, int r15) throws java.io.IOException {
        /*
            r12 = this;
            r0 = 0
            if (r15 != 0) goto L4
            return r0
        L4:
            long r1 = r12.bytesRemaining
            r3 = 0
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 != 0) goto Le
            r13 = -1
            return r13
        Le:
            long r3 = (long) r15
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 >= 0) goto L14
            int r15 = (int) r1
        L14:
            r1 = r0
        L15:
            if (r1 != 0) goto L1b
            boolean r2 = r12.opened     // Catch: java.lang.Exception -> Lc1
            if (r2 != 0) goto L1f
        L1b:
            java.io.RandomAccessFile r2 = r12.file     // Catch: java.lang.Exception -> Lc1
            if (r2 != 0) goto La7
        L1f:
            org.telegram.messenger.FileLoadOperation r1 = r12.loadOperation     // Catch: java.lang.Exception -> Lc1
            long r2 = r12.currentOffset     // Catch: java.lang.Exception -> Lc1
            long r4 = (long) r15     // Catch: java.lang.Exception -> Lc1
            long[] r1 = r1.getDownloadedLengthFromOffset(r2, r4)     // Catch: java.lang.Exception -> Lc1
            r2 = r1[r0]     // Catch: java.lang.Exception -> Lc1
            int r1 = (int) r2     // Catch: java.lang.Exception -> Lc1
            if (r1 != 0) goto L5f
            java.util.concurrent.CountDownLatch r2 = new java.util.concurrent.CountDownLatch     // Catch: java.lang.Exception -> Lc1
            r3 = 1
            r2.<init>(r3)     // Catch: java.lang.Exception -> Lc1
            r12.countDownLatch = r2     // Catch: java.lang.Exception -> Lc1
            int r2 = r12.currentAccount     // Catch: java.lang.Exception -> Lc1
            org.telegram.messenger.FileLoader r3 = org.telegram.messenger.FileLoader.getInstance(r2)     // Catch: java.lang.Exception -> Lc1
            org.telegram.tgnet.TLRPC$Document r5 = r12.document     // Catch: java.lang.Exception -> Lc1
            r6 = 0
            java.lang.Object r7 = r12.parentObject     // Catch: java.lang.Exception -> Lc1
            long r8 = r12.currentOffset     // Catch: java.lang.Exception -> Lc1
            r10 = 0
            int r11 = r12.getCurrentPriority()     // Catch: java.lang.Exception -> Lc1
            r4 = r12
            org.telegram.messenger.FileLoadOperation r2 = r3.loadStreamFile(r4, r5, r6, r7, r8, r10, r11)     // Catch: java.lang.Exception -> Lc1
            org.telegram.messenger.FileLoadOperation r3 = r12.loadOperation     // Catch: java.lang.Exception -> Lc1
            if (r3 == r2) goto L55
            r3.removeStreamListener(r12)     // Catch: java.lang.Exception -> Lc1
            r12.loadOperation = r2     // Catch: java.lang.Exception -> Lc1
        L55:
            java.util.concurrent.CountDownLatch r2 = r12.countDownLatch     // Catch: java.lang.Exception -> Lc1
            if (r2 == 0) goto L5f
            r2.await()     // Catch: java.lang.Exception -> Lc1
            r2 = 0
            r12.countDownLatch = r2     // Catch: java.lang.Exception -> Lc1
        L5f:
            org.telegram.messenger.FileLoadOperation r2 = r12.loadOperation     // Catch: java.lang.Exception -> Lc1
            java.io.File r2 = r2.getCurrentFileFast()     // Catch: java.lang.Exception -> Lc1
            java.io.RandomAccessFile r3 = r12.file     // Catch: java.lang.Exception -> Lc1
            if (r3 == 0) goto L71
            java.io.File r3 = r12.currentFile     // Catch: java.lang.Exception -> Lc1
            boolean r3 = java.util.Objects.equals(r3, r2)     // Catch: java.lang.Exception -> Lc1
            if (r3 != 0) goto L15
        L71:
            boolean r3 = org.telegram.messenger.BuildVars.LOGS_ENABLED     // Catch: java.lang.Exception -> Lc1
            if (r3 == 0) goto L89
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lc1
            r3.<init>()     // Catch: java.lang.Exception -> Lc1
            java.lang.String r4 = "check stream file "
            r3.append(r4)     // Catch: java.lang.Exception -> Lc1
            r3.append(r2)     // Catch: java.lang.Exception -> Lc1
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> Lc1
            org.telegram.messenger.FileLog.m70d(r3)     // Catch: java.lang.Exception -> Lc1
        L89:
            java.io.RandomAccessFile r3 = r12.file     // Catch: java.lang.Exception -> Lc1
            if (r3 == 0) goto L90
            r3.close()     // Catch: java.lang.Exception -> L90
        L90:
            r12.currentFile = r2     // Catch: java.lang.Exception -> Lc1
            if (r2 == 0) goto L15
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L15
            java.io.File r3 = r12.currentFile     // Catch: java.lang.Throwable -> L15
            java.lang.String r4 = "r"
            r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> L15
            r12.file = r2     // Catch: java.lang.Throwable -> L15
            long r3 = r12.currentOffset     // Catch: java.lang.Throwable -> L15
            r2.seek(r3)     // Catch: java.lang.Throwable -> L15
            goto L15
        La7:
            boolean r15 = r12.opened     // Catch: java.lang.Exception -> Lc1
            if (r15 != 0) goto Lac
            return r0
        Lac:
            int r13 = r2.read(r13, r14, r1)     // Catch: java.lang.Exception -> Lc1
            if (r13 <= 0) goto Lc0
            long r14 = r12.currentOffset     // Catch: java.lang.Exception -> Lc1
            long r0 = (long) r13     // Catch: java.lang.Exception -> Lc1
            long r14 = r14 + r0
            r12.currentOffset = r14     // Catch: java.lang.Exception -> Lc1
            long r14 = r12.bytesRemaining     // Catch: java.lang.Exception -> Lc1
            long r14 = r14 - r0
            r12.bytesRemaining = r14     // Catch: java.lang.Exception -> Lc1
            r12.bytesTransferred(r13)     // Catch: java.lang.Exception -> Lc1
        Lc0:
            return r13
        Lc1:
            r13 = move-exception
            java.io.IOException r14 = new java.io.IOException
            r14.<init>(r13)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileStreamLoadOperation.read(byte[], int, int):int");
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        FileLoadOperation fileLoadOperation = this.loadOperation;
        if (fileLoadOperation != null) {
            fileLoadOperation.removeStreamListener(this);
        }
        RandomAccessFile randomAccessFile = this.file;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (Exception e) {
                FileLog.m67e(e);
            }
            this.file = null;
        }
        this.uri = null;
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
        CountDownLatch countDownLatch = this.countDownLatch;
        if (countDownLatch != null) {
            countDownLatch.countDown();
            this.countDownLatch = null;
        }
    }

    @Override // org.telegram.messenger.FileLoadOperationStream
    public void newDataAvailable() {
        CountDownLatch countDownLatch = this.countDownLatch;
        if (countDownLatch != null) {
            countDownLatch.countDown();
            this.countDownLatch = null;
        }
    }

    public static void setPriorityForDocument(TLRPC$Document tLRPC$Document, int i) {
        if (tLRPC$Document != null) {
            priorityMap.put(Long.valueOf(tLRPC$Document.f1539id), Integer.valueOf(i));
        }
    }

    public static Uri prepareUri(int i, TLRPC$Document tLRPC$Document, Object obj) {
        String attachFileName = FileLoader.getAttachFileName(tLRPC$Document);
        File pathToAttach = FileLoader.getInstance(i).getPathToAttach(tLRPC$Document);
        if (pathToAttach != null && pathToAttach.exists()) {
            return Uri.fromFile(pathToAttach);
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("?account=");
            sb.append(i);
            sb.append("&id=");
            sb.append(tLRPC$Document.f1539id);
            sb.append("&hash=");
            sb.append(tLRPC$Document.access_hash);
            sb.append("&dc=");
            sb.append(tLRPC$Document.dc_id);
            sb.append("&size=");
            sb.append(tLRPC$Document.size);
            sb.append("&mime=");
            sb.append(URLEncoder.encode(tLRPC$Document.mime_type, "UTF-8"));
            sb.append("&rid=");
            sb.append(FileLoader.getInstance(i).getFileReference(obj));
            sb.append("&name=");
            sb.append(URLEncoder.encode(FileLoader.getDocumentFileName(tLRPC$Document), "UTF-8"));
            sb.append("&reference=");
            byte[] bArr = tLRPC$Document.file_reference;
            if (bArr == null) {
                bArr = new byte[0];
            }
            sb.append(Utilities.bytesToHex(bArr));
            String sb2 = sb.toString();
            return Uri.parse("tg://" + attachFileName + sb2);
        } catch (UnsupportedEncodingException e) {
            FileLog.m67e(e);
            return null;
        }
    }
}
