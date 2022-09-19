import { createHash } from 'crypto';

class HashController {
    getHash(request, response) {
        const hashedValue = createHash('md5').update(request.params.value).digest('hex');
        response.status(200).send(hashedValue);
    }
}

const hashController = new HashController();
export default hashController;
