package org.web3j.crypto;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.Provider;
import java.security.SecureRandomSpi;
import java.security.Security;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/* loaded from: classes6.dex */
public class LinuxSecureRandom extends SecureRandomSpi {
    private static final Logger log;
    private static final FileInputStream urandom;
    private final DataInputStream dis = new DataInputStream(urandom);

    @Override // java.security.SecureRandomSpi
    protected void engineSetSeed(byte[] bArr) {
    }

    /* loaded from: classes6.dex */
    private static class LinuxSecureRandomProvider extends Provider {
        public LinuxSecureRandomProvider() {
            super("LinuxSecureRandom", 1.0d, "A Linux specific random number provider that uses /dev/urandom");
            put("SecureRandom.LinuxSecureRandom", LinuxSecureRandom.class.getName());
        }
    }

    static {
        Logger logger = LoggerFactory.getLogger(LinuxSecureRandom.class);
        log = logger;
        try {
            File file = new File("/dev/urandom");
            FileInputStream fileInputStream = new FileInputStream(file);
            urandom = fileInputStream;
            if (fileInputStream.read() == -1) {
                throw new RuntimeException("/dev/urandom not readable?");
            }
            if (Security.insertProviderAt(new LinuxSecureRandomProvider(), 1) != -1) {
                logger.info("Secure randomness will be read from {} only.", file);
            } else {
                logger.info("Randomness is already secure.");
            }
        } catch (FileNotFoundException e) {
            log.error("/dev/urandom does not appear to exist or is not openable");
            throw new RuntimeException(e);
        } catch (IOException e2) {
            log.error("/dev/urandom does not appear to be readable");
            throw new RuntimeException(e2);
        }
    }

    @Override // java.security.SecureRandomSpi
    protected void engineNextBytes(byte[] bArr) {
        try {
            this.dis.readFully(bArr);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // java.security.SecureRandomSpi
    protected byte[] engineGenerateSeed(int i) {
        byte[] bArr = new byte[i];
        engineNextBytes(bArr);
        return bArr;
    }
}
