package net.lingala.zip4j.core;

import java.io.File;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.UnzipParameters;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.progress.ProgressMonitor;
import net.lingala.zip4j.unzip.Unzip;
import net.lingala.zip4j.util.Zip4jUtil;
/* loaded from: classes4.dex */
public class ZipFile {
    private String file;
    private String fileNameCharset;
    private int mode;
    private ProgressMonitor progressMonitor;
    private boolean runInThread;
    private ZipModel zipModel;

    public ZipFile(String str) throws ZipException {
        this(new File(str));
    }

    public ZipFile(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("Input zip file parameter is not null", 1);
        }
        this.file = file.getPath();
        this.mode = 2;
        this.progressMonitor = new ProgressMonitor();
        this.runInThread = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readZipInfo() throws net.lingala.zip4j.exception.ZipException {
        /*
            r5 = this;
            java.lang.String r0 = r5.file
            boolean r0 = net.lingala.zip4j.util.Zip4jUtil.checkFileExists(r0)
            if (r0 == 0) goto L6a
            java.lang.String r0 = r5.file
            boolean r0 = net.lingala.zip4j.util.Zip4jUtil.checkFileReadAccess(r0)
            if (r0 == 0) goto L61
            int r0 = r5.mode
            r1 = 2
            if (r0 != r1) goto L59
            r0 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L43 java.io.FileNotFoundException -> L48
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L43 java.io.FileNotFoundException -> L48
            java.lang.String r3 = r5.file     // Catch: java.lang.Throwable -> L43 java.io.FileNotFoundException -> L48
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L43 java.io.FileNotFoundException -> L48
            java.lang.String r3 = "r"
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L43 java.io.FileNotFoundException -> L48
            net.lingala.zip4j.model.ZipModel r0 = r5.zipModel     // Catch: java.io.FileNotFoundException -> L41 java.lang.Throwable -> L52
            if (r0 != 0) goto L3d
            net.lingala.zip4j.core.HeaderReader r0 = new net.lingala.zip4j.core.HeaderReader     // Catch: java.io.FileNotFoundException -> L41 java.lang.Throwable -> L52
            r0.<init>(r1)     // Catch: java.io.FileNotFoundException -> L41 java.lang.Throwable -> L52
            java.lang.String r2 = r5.fileNameCharset     // Catch: java.io.FileNotFoundException -> L41 java.lang.Throwable -> L52
            net.lingala.zip4j.model.ZipModel r0 = r0.readAllHeaders(r2)     // Catch: java.io.FileNotFoundException -> L41 java.lang.Throwable -> L52
            r5.zipModel = r0     // Catch: java.io.FileNotFoundException -> L41 java.lang.Throwable -> L52
            if (r0 == 0) goto L3d
            java.lang.String r2 = r5.file     // Catch: java.io.FileNotFoundException -> L41 java.lang.Throwable -> L52
            r0.setZipFile(r2)     // Catch: java.io.FileNotFoundException -> L41 java.lang.Throwable -> L52
        L3d:
            r1.close()     // Catch: java.io.IOException -> L40
        L40:
            return
        L41:
            r0 = move-exception
            goto L4c
        L43:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L53
        L48:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L4c:
            net.lingala.zip4j.exception.ZipException r2 = new net.lingala.zip4j.exception.ZipException     // Catch: java.lang.Throwable -> L52
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L52
            throw r2     // Catch: java.lang.Throwable -> L52
        L52:
            r0 = move-exception
        L53:
            if (r1 == 0) goto L58
            r1.close()     // Catch: java.io.IOException -> L58
        L58:
            throw r0
        L59:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException
            java.lang.String r1 = "Invalid mode"
            r0.<init>(r1)
            throw r0
        L61:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException
            java.lang.String r1 = "no read access for the input zip file"
            r0.<init>(r1)
            throw r0
        L6a:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException
            java.lang.String r1 = "zip file does not exist"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.core.ZipFile.readZipInfo():void");
    }

    public void extractAll(String str) throws ZipException {
        extractAll(str, null);
    }

    public void extractAll(String str, UnzipParameters unzipParameters) throws ZipException {
        if (!Zip4jUtil.isStringNotNullAndNotEmpty(str)) {
            throw new ZipException("output path is null or invalid");
        }
        if (!Zip4jUtil.checkOutputFolder(str)) {
            throw new ZipException("invalid output path");
        }
        if (this.zipModel == null) {
            readZipInfo();
        }
        if (this.zipModel == null) {
            throw new ZipException("Internal error occurred when extracting zip file");
        }
        if (this.progressMonitor.getState() == 1) {
            throw new ZipException("invalid operation - Zip4j is in busy state");
        }
        new Unzip(this.zipModel).extractAll(unzipParameters, str, this.progressMonitor, this.runInThread);
    }

    public File getFile() {
        return new File(this.file);
    }
}
